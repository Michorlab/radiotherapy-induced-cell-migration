import numpy as np
import pickle
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd


# define the base path
path = '/michorlab/manuel/data/in_silico_parameter/'


## setting 
# name = 'SETTING1_std' 
# name = 'SETTING2_opt'
# name = 'SETTING3_4gy'




setting_names = ['SETTING1_std', 'SETTING2_opt', 'SETTING3_4gy']

mod_list = ['Linear Regression', 'Random Forest', 'PFN']
params_list = ['alpha', 'beta', 'a+2b']
Nsplits = 5

# compute for all_results
results = [] #pd.DataFrame(columns = ['mod', 'param', 'dataset', 'split', 'correlation'])
    
    

for name in setting_names:
    load_name_results = f'results_{name}.pkl'

    # load the results again
    with open(path+load_name_results, 'rb') as f:
        all_results = pickle.load(f)

    

    for mi, modName in enumerate(mod_list):

        # Loop through parameters and train/test
        for col, param in enumerate(params_list):
            for row, dataset_type in enumerate(['Train', 'Test']):
                
                for spltNR in range(Nsplits):
                    # Construct the case_name string
                    case_name = f'{param}_{modName}_split_{spltNR}'
                    
                    
                    # Select appropriate data based on train/test
                    if dataset_type == 'Train':
                        y = all_results[case_name]['Y_train']
                        pred = all_results[case_name]['train_pred']
                    else:  # Test
                        y = all_results[case_name]['Y_test']
                        pred = all_results[case_name]['test_pred']
                    
                    # Compute correlation
                    corr = np.corrcoef(y, pred)[0, 1]  # Pearson correlation
                    
                    
                    # add to pandas df
                    results += [ {'name': name, 'mod': modName, 'param': param, 'dataset': dataset_type, 'split': spltNR, 'correlation': corr} ]
                    

results_df = pd.DataFrame(results)
            
print(results_df.head())

# save 
results_df.to_csv(path+'results_correlation.csv', index=False)            
               