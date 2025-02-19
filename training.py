# gpu_LLMs environment

import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error, median_absolute_error
from sklearn.preprocessing import StandardScaler
from tabpfn import TabPFNRegressor
import pickle


# load the data

# Define the base path
path = '/michorlab/manuel/data/in_silico_parameter/'

# Define file names in a dictionary for easy iteration
file_names = {
    '4gy': 'in_silico_cell_counts_4gy.csv',
    'opt': 'in_silico_cell_counts_opt.csv',
    'std': 'in_silico_cell_counts_std.csv',
    '4gy_esc': 'in_silico_esc_cell_counts_4gy.csv',
    'opt_esc': 'in_silico_esc_cell_counts_opt.csv',
    'std_esc': 'in_silico_esc_cell_counts_std.csv'
}

# Load cell count data dynamically
dataCellCounts = {}
times = {}

for key, file in file_names.items():
    df = pd.read_csv(path + 'in_silico_data/' +file)
    times[key] = df.pop('Time')  # Extract and store time column
    dataCellCounts[key] = df.T  # Transpose for consistency

# Load parameter sets
params = pd.read_csv(path +'in_silico_data/param_sets_in_silico.csv', header=None)
params.columns = ['alpha', 'beta', 'a', 'b', 'IR_ratio']

# Print dataset shapes
for key, df in dataCellCounts.items():
    print(f"dataCellCount_{key} {df.shape}")

# define additional outcomes
print(f"params {params.shape}")

# params['alpha/beta'] = params['alpha'] / params['beta']
# params['a/b'] = params['a'] / params['b']   
params['a+2b'] = params['a'] + 2*params['b']
# params['a+b'] = params['a'] + params['b']

params.drop(['IR_ratio','a','b'], axis=1, inplace=True)

print(f"params {params.shape}")




# model training
############################### 
# define hyperparameters
ncv = 5
test_size = 0.2
SETTING = 3 # 1 (standard schedule with cell count + escalated) or 2 (optimal schedule with cell count)  or 3 (suboptimal schedule with cell count)

## SETTING 1
############################################### 
if SETTING == 1:
    name = 'SETTING1'
    BOTH = True
    schedule = 'std'    
############################################


## SETTING 2
# ############################################### 
if SETTING == 2:
    name = 'SETTING2'   
    BOTH = False
    schedule = 'opt'
# ############################################


## SETTING 3
# ############################################### 
if SETTING == 3:
    name = 'SETTING3'   
    BOTH = False
    schedule = '4gy'
# ############################################



# Assuming X is dataCellCount_opt and Y is params (with multiple columns)
if BOTH:
    X = pd.concat([dataCellCounts['std'], dataCellCounts['std'+'_esc']], axis=1)
else:
    X = dataCellCounts[schedule]


print(X.shape)

Y = params

# Log-transform X and standardize
X = np.log(X + 1)
X = (X - X.mean(axis=0)) / (X.std(axis=0)+1e-6)

# Initialize a dictionary to store separate scalers for each outcome
scalers = {col: StandardScaler() for col in Y.columns}

# Standardize Y by fitting each scaler to the corresponding column in Y
Y_standardized = np.zeros_like(Y)  # Create an empty array with the same shape as Y
for col in Y.columns:
    Y_standardized[:, Y.columns.get_loc(col)] = scalers[col].fit_transform(Y[[col]]).flatten()

# Initialize a dictionary to store results for each target column in Y
all_results = {}

# loop over all paramters for model training
for target_col in Y.columns:
    print(f"Processing target column: {target_col}")
    
    # Initialize lists to store evaluation results for this target column
    results = []
    saved_models = {}  # Dictionary to store model objects

    # Loop through each train-test split 
    for i in range(ncv):
        print(f"Train-Test Split {i + 1}")

        # Split the data into training and testing sets for the current target column
        X_train, X_test, Y_train, Y_test = train_test_split(
            X, Y_standardized[:, Y.columns.get_loc(target_col)], test_size=test_size, random_state=i
        )
        

        # Model initialization
        models = {
            'Linear Regression': LinearRegression(),
            'Random Forest': RandomForestRegressor(),
            'PFN': TabPFNRegressor(ignore_pretraining_limits=True),
            # 'MLP': MLPRegressor(max_iter=500)  # Uncomment if needed
        }

        for model_name, model in models.items():
            print(f"Training {model_name}...")

            # Fit the model
            model.fit(X_train, Y_train)

            # Save the trained model
            saved_models[f"{model_name}_{target_col}_{i}"] = model  # Store the model object

            # Predictions on standardized Y values
            train_pred = model.predict(X_train)
            test_pred = model.predict(X_test)

            # Inverse transform predictions to get them back to the original scale
            train_pred_original_scale = scalers[target_col].inverse_transform(train_pred.reshape(-1, 1)).flatten()
            test_pred_original_scale = scalers[target_col].inverse_transform(test_pred.reshape(-1, 1)).flatten()

            # Inverse transform Y_train and Y_test to get them back to the original scale for evaluation
            Y_train_original_scale = scalers[target_col].inverse_transform(Y_train.reshape(-1, 1)).flatten()
            Y_test_original_scale = scalers[target_col].inverse_transform(Y_test.reshape(-1, 1)).flatten()

            # Calculate RMSE and AbsMedError for training data
            train_rmse = np.sqrt(mean_squared_error(Y_train_original_scale, train_pred_original_scale))
            train_absmederror = median_absolute_error(Y_train_original_scale, train_pred_original_scale)

            # Calculate RMSE and AbsMedError for testing data
            test_rmse = np.sqrt(mean_squared_error(Y_test_original_scale, test_pred_original_scale))
            test_absmederror = median_absolute_error(Y_test_original_scale, test_pred_original_scale)
            
            # calculate correlation
            train_corr = np.corrcoef(Y_train_original_scale, train_pred_original_scale)[0,1]
            test_corr = np.corrcoef(Y_test_original_scale, test_pred_original_scale)[0,1]

            # Store the results for this model and this target column
            newRes = {
                'Model': model_name,
                'Target Column': target_col,
                'Train RMSE': train_rmse,
                'Train AbsMedError': train_absmederror,
                'Test RMSE': test_rmse,
                'Test AbsMedError': test_absmederror,
                'Train Correlation': train_corr,
                'Test Correlation': test_corr
            }
            results.append(newRes)

            # Store the train, test data, and predictions
            all_results[f"{target_col}_{model_name}_split_{i}"] = {
                'X_train': X_train,
                'X_test': X_test,
                'Y_train': Y_train_original_scale,
                'Y_test': Y_test_original_scale,
                'train_pred': train_pred_original_scale,
                'test_pred': test_pred_original_scale
            }

    # Store the results for the target column in the all_results dictionary
    all_results[f"{target_col}_results"] = results

# Convert results into a DataFrame for better visualization
# all_results_df = {}
# for target_col, res in all_results.items():
#     if isinstance(res, list):  # Only DataFrame conversion for result lists
#         all_results_df[target_col] = pd.DataFrame(res)

# Now you can print the results for each target column
# for target_col, result_df in all_results_df.items():
#     print(f"Results for {target_col}:")
#     print(result_df)
    
# Save all results to a file

with open(path+f'results_{name}_{schedule}.pkl', 'wb') as f:
    pickle.dump(all_results, f)


