

#setwd("~/OneDrive - Mass General Brigham/Cell_mobility_project/data_analysis_R")

library(dplyr)
library(tidyverse)
library(readr)
library(ggridges)
library(ggpubr)
library(circular)
library(ggplot2)

source('custom_plot_theme.R')

#### DATA PROCESSING ####


#### load in data ####

a498_1gy_5_x <- read_table("Jacobdata/a498_1gy_5/a498_1gy_5_x.txt",col_names = FALSE)

a498_1gy_5_y <- read_table("Jacobdata/a498_1gy_5/a498_1gy_5_y.txt",col_names = FALSE)

a498_1gy_5_p53 <- read_table("Jacobdata/a498_1gy_5/a498_1gy_5_p53.txt",col_names = FALSE)

a498_1gy_6_x <- read_table("Jacobdata/a498_1gy_6/a498_1gy_6_x.txt",col_names = FALSE)

a498_1gy_6_y <- read_table("Jacobdata/a498_1gy_6/a498_1gy_6_y.txt",col_names = FALSE)

a498_1gy_6_p53 <- read_table("Jacobdata/a498_1gy_6/a498_1gy_6_p53.txt",col_names = FALSE)

a498_2gy_5_x <- read_table("Jacobdata/a498_2gy_5/a498_2gy_5_x.txt",col_names = FALSE)

a498_2gy_5_y <- read_table("Jacobdata/a498_2gy_5/a498_2gy_5_y.txt",col_names = FALSE)

a498_2gy_5_p53 <- read_table("Jacobdata/a498_2gy_5/a498_2gy_5_p53.txt",col_names = FALSE)

a498_2gy_6_x <- read_table("Jacobdata/a498_2gy_6/a498_2gy_6_x.txt",col_names = FALSE)

a498_2gy_6_y <- read_table("Jacobdata/a498_2gy_6/a498_2gy_6_y.txt",col_names = FALSE)

a498_2gy_6_p53 <- read_table("Jacobdata/a498_2gy_6/a498_2gy_6_p53.txt",col_names = FALSE)

a498_4gy_5_x <- read_table("Jacobdata/a498_4gy_5/a498_4gy_5_x.txt",col_names = FALSE)

a498_4gy_5_y <- read_table("Jacobdata/a498_4gy_5/a498_4gy_5_y.txt",col_names = FALSE)

a498_4gy_5_p53 <- read_table("Jacobdata/a498_4gy_5/a498_4gy_5_p53.txt",col_names = FALSE)

a498_4gy_6_x <- read_table("Jacobdata/a498_4gy_6/a498_4gy_6_x.txt",col_names = FALSE)

a498_4gy_6_y <- read_table("Jacobdata/a498_4gy_6/a498_4gy_6_y.txt",col_names = FALSE)

a498_4gy_6_p53 <- read_table("Jacobdata/a498_4gy_6/a498_4gy_6_p53.txt",col_names = FALSE)

a498_6gy_7_x <- read_table("Jacobdata/a498_6gy_7/a498_6gy_7_x.txt",col_names = FALSE)

a498_6gy_7_y <- read_table("Jacobdata/a498_6gy_7/a498_6gy_7_y.txt",col_names = FALSE)

a498_6gy_7_p53 <- read_table("Jacobdata/a498_6gy_7/a498_6gy_7_p53.txt",col_names = FALSE)

a498_6gy_10_x <- read_table("Jacobdata/a498_6gy_10/a498_6gy_10_x.txt",col_names = FALSE)

a498_6gy_10_y <- read_table("Jacobdata/a498_6gy_10/a498_6gy_10_y.txt",col_names = FALSE)

a498_6gy_10_p53 <- read_table("Jacobdata/a498_6gy_10/a498_6gy_10_p53.txt",col_names = FALSE)

a498_8gy_5_x <- read_table("Jacobdata/a498_8gy_5/a498_8gy_5_x.txt",col_names = FALSE)

a498_8gy_5_y <- read_table("Jacobdata/a498_8gy_5/a498_8gy_5_y.txt",col_names = FALSE)

a498_8gy_5_p53 <- read_table("Jacobdata/a498_8gy_5/a498_8gy_5_p53.txt",col_names = FALSE)

a498_8gy_6_x <- read_table("Jacobdata/a498_8gy_6/a498_8gy_6_x.txt",col_names = FALSE)

a498_8gy_6_y <- read_table("Jacobdata/a498_8gy_6/a498_8gy_6_y.txt",col_names = FALSE)

a498_8gy_6_p53 <- read_table("Jacobdata/a498_8gy_6/a498_8gy_6_p53.txt",col_names = FALSE)




a549_1gy_9_x <- read_table("Jacobdata/a549_1gy_9/a549_1gy_9_x.txt",col_names = FALSE)

a549_1gy_9_y <- read_table("Jacobdata/a549_1gy_9/a549_1gy_9_y.txt",col_names = FALSE)

a549_1gy_9_p53 <- read_table("Jacobdata/a549_1gy_9/a549_1gy_9_p53.txt",col_names = FALSE)

a549_1gy_10_x <- read_table("Jacobdata/a549_1gy_10/a549_1gy_10_x.txt",col_names = FALSE)

a549_1gy_10_y <- read_table("Jacobdata/a549_1gy_10/a549_1gy_10_y.txt",col_names = FALSE)

a549_1gy_10_p53 <- read_table("Jacobdata/a549_1gy_10/a549_1gy_10_p53.txt",col_names = FALSE)

a549_2gy_9_x <- read_table("Jacobdata/a549_2gy_9/a549_2gy_9_x.txt",col_names = FALSE)

a549_2gy_9_y <- read_table("Jacobdata/a549_2gy_9/a549_2gy_9_y.txt",col_names = FALSE)

a549_2gy_9_p53 <- read_table("Jacobdata/a549_2gy_9/a549_2gy_9_p53.txt",col_names = FALSE)

a549_2gy_10_x <- read_table("Jacobdata/a549_2gy_10/a549_2gy_10_x.txt",col_names = FALSE)

a549_2gy_10_y <- read_table("Jacobdata/a549_2gy_10/a549_2gy_10_y.txt",col_names = FALSE)

a549_2gy_10_p53 <- read_table("Jacobdata/a549_2gy_10/a549_2gy_10_p53.txt",col_names = FALSE)

a549_4gy_9_x <- read_table("Jacobdata/a549_4gy_9/a549_4gy_9_x.txt",col_names = FALSE)

a549_4gy_9_y <- read_table("Jacobdata/a549_4gy_9/a549_4gy_9_y.txt",col_names = FALSE)

a549_4gy_9_p53 <- read_table("Jacobdata/a549_4gy_9/a549_4gy_9_p53.txt",col_names = FALSE)

a549_4gy_10_x <- read_table("Jacobdata/a549_4gy_10/a549_4gy_10_x.txt",col_names = FALSE)

a549_4gy_10_y <- read_table("Jacobdata/a549_4gy_10/a549_4gy_10_y.txt",col_names = FALSE)

a549_4gy_10_p53 <- read_table("Jacobdata/a549_4gy_10/a549_4gy_10_p53.txt",col_names = FALSE)

a549_6gy_11_x <- read_table("Jacobdata/a549_6gy_11/a549_6gy_11_x.txt",col_names = FALSE)

a549_6gy_11_y <- read_table("Jacobdata/a549_6gy_11/a549_6gy_11_y.txt",col_names = FALSE)

a549_6gy_11_p53 <- read_table("Jacobdata/a549_6gy_11/a549_6gy_11_p53.txt",col_names = FALSE)

a549_6gy_12_x <- read_table("Jacobdata/a549_6gy_12/a549_6gy_12_x.txt",col_names = FALSE)

a549_6gy_12_y <- read_table("Jacobdata/a549_6gy_12/a549_6gy_12_y.txt",col_names = FALSE)

a549_6gy_12_p53 <- read_table("Jacobdata/a549_6gy_12/a549_6gy_12_p53.txt",col_names = FALSE)

a549_8gy_11_x <- read_table("Jacobdata/a549_8gy_11/a549_8gy_11_x.txt",col_names = FALSE)

a549_8gy_11_y <- read_table("Jacobdata/a549_8gy_11/a549_8gy_11_y.txt",col_names = FALSE)

a549_8gy_11_p53 <- read_table("Jacobdata/a549_8gy_11/a549_8gy_11_p53.txt",col_names = FALSE)

a549_8gy_12_x <- read_table("Jacobdata/a549_8gy_12/a549_8gy_12_x.txt",col_names = FALSE)

a549_8gy_12_y <- read_table("Jacobdata/a549_8gy_12/a549_8gy_12_y.txt",col_names = FALSE)

a549_8gy_12_p53 <- read_table("Jacobdata/a549_8gy_12/a549_8gy_12_p53.txt",col_names = FALSE)




h460_1gy_11_x <- read_table("Jacobdata/h460_1gy_11/h460_1gy_11_x.txt",col_names = FALSE)

h460_1gy_11_y <- read_table("Jacobdata/h460_1gy_11/h460_1gy_11_y.txt",col_names = FALSE)

h460_1gy_11_p53 <- read_table("Jacobdata/h460_1gy_11/h460_1gy_11_p53.txt",col_names = FALSE)

h460_1gy_12_x <- read_table("Jacobdata/h460_1gy_12/h460_1gy_12_x.txt",col_names = FALSE)

h460_1gy_12_y <- read_table("Jacobdata/h460_1gy_12/h460_1gy_12_y.txt",col_names = FALSE)

h460_1gy_12_p53 <- read_table("Jacobdata/h460_1gy_12/h460_1gy_12_p53.txt",col_names = FALSE)

h460_2gy_11_x <- read_table("Jacobdata/h460_2gy_11/h460_2gy_11_x.txt",col_names = FALSE)

h460_2gy_11_y <- read_table("Jacobdata/h460_2gy_11/h460_2gy_11_y.txt",col_names = FALSE)

h460_2gy_11_p53 <- read_table("Jacobdata/h460_2gy_11/h460_2gy_11_p53.txt",col_names = FALSE)

h460_2gy_12_x <- read_table("Jacobdata/h460_2gy_12/h460_2gy_12_x.txt",col_names = FALSE)

h460_2gy_12_y <- read_table("Jacobdata/h460_2gy_12/h460_2gy_12_y.txt",col_names = FALSE)

h460_2gy_12_p53 <- read_table("Jacobdata/h460_2gy_12/h460_2gy_12_p53.txt",col_names = FALSE)

h460_4gy_11_x <- read_table("Jacobdata/h460_4gy_11/h460_4gy_11_x.txt",col_names = FALSE)

h460_4gy_11_y <- read_table("Jacobdata/h460_4gy_11/h460_4gy_11_y.txt",col_names = FALSE)

h460_4gy_11_p53 <- read_table("Jacobdata/h460_4gy_11/h460_4gy_11_p53.txt",col_names = FALSE)

h460_4gy_12_x <- read_table("Jacobdata/h460_4gy_12/h460_4gy_12_x.txt",col_names = FALSE)

h460_4gy_12_y <- read_table("Jacobdata/h460_4gy_12/h460_4gy_12_y.txt",col_names = FALSE)

h460_4gy_12_p53 <- read_table("Jacobdata/h460_4gy_12/h460_4gy_12_p53.txt",col_names = FALSE)

h460_6gy_15_x <- read_table("Jacobdata/h460_6gy_15/h460_6gy_15_x.txt",col_names = FALSE)

h460_6gy_15_y <- read_table("Jacobdata/h460_6gy_15/h460_6gy_15_y.txt",col_names = FALSE)

h460_6gy_15_p53 <- read_table("Jacobdata/h460_6gy_15/h460_6gy_15_p53.txt",col_names = FALSE)

h460_6gy_16_x <- read_table("Jacobdata/h460_6gy_16/h460_6gy_16_x.txt",col_names = FALSE)

h460_6gy_16_y <- read_table("Jacobdata/h460_6gy_16/h460_6gy_16_y.txt",col_names = FALSE)

h460_6gy_16_p53 <- read_table("Jacobdata/h460_6gy_16/h460_6gy_16_p53.txt",col_names = FALSE)

h460_8gy_13_x <- read_table("Jacobdata/h460_8gy_13/h460_8gy_13_x.txt",col_names = FALSE)

h460_8gy_13_y <- read_table("Jacobdata/h460_8gy_13/h460_8gy_13_y.txt",col_names = FALSE)

h460_8gy_13_p53 <- read_table("Jacobdata/h460_8gy_13/h460_8gy_13_p53.txt",col_names = FALSE)

h460_8gy_14_x <- read_table("Jacobdata/h460_8gy_14/h460_8gy_14_x.txt",col_names = FALSE)

h460_8gy_14_y <- read_table("Jacobdata/h460_8gy_14/h460_8gy_14_y.txt",col_names = FALSE)

h460_8gy_14_p53 <- read_table("Jacobdata/h460_8gy_14/h460_8gy_14_p53.txt",col_names = FALSE)




HCT116_1gy_13_x <- read_table("Jacobdata/HCT116_1gy_13/HCT116_1gy_13_x.txt",col_names = FALSE)

HCT116_1gy_13_y <- read_table("Jacobdata/HCT116_1gy_13/HCT116_1gy_13_y.txt",col_names = FALSE)

HCT116_1gy_13_p53 <- read_table("Jacobdata/HCT116_1gy_13/HCT116_1gy_13_p53.txt",col_names = FALSE)

HCT116_2gy_13_x <- read_table("Jacobdata/HCT116_2gy_13/HCT116_2gy_13_x.txt",col_names = FALSE)

HCT116_2gy_13_y <- read_table("Jacobdata/HCT116_2gy_13/HCT116_2gy_13_y.txt",col_names = FALSE)

HCT116_2gy_13_p53 <- read_table("Jacobdata/HCT116_2gy_13/HCT116_2gy_13_p53.txt",col_names = FALSE)

HCT116_2gy_14_x <- read_table("Jacobdata/HCT116_2gy_14/HCT116_2gy_14_x.txt",col_names = FALSE)

HCT116_2gy_14_y <- read_table("Jacobdata/HCT116_2gy_14/HCT116_2gy_14_y.txt",col_names = FALSE)

HCT116_2gy_14_p53 <- read_table("Jacobdata/HCT116_2gy_14/HCT116_2gy_14_p53.txt",col_names = FALSE)

HCT116_4gy_13_x <- read_table("Jacobdata/HCT116_4gy_13/HCT116_4gy_13_x.txt",col_names = FALSE)

HCT116_4gy_13_y <- read_table("Jacobdata/HCT116_4gy_13/HCT116_4gy_13_y.txt",col_names = FALSE)

HCT116_4gy_13_p53 <- read_table("Jacobdata/HCT116_4gy_13/HCT116_4gy_13_p53.txt",col_names = FALSE)

HCT116_4gy_14_x <- read_table("Jacobdata/HCT116_4gy_14/HCT116_4gy_14_x.txt",col_names = FALSE)

HCT116_4gy_14_y <- read_table("Jacobdata/HCT116_4gy_14/HCT116_4gy_14_y.txt",col_names = FALSE)

HCT116_4gy_14_p53 <- read_table("Jacobdata/HCT116_4gy_14/HCT116_4gy_14_p53.txt",col_names = FALSE)

HCT116_6gy_13_x <- read_table("Jacobdata/HCT116_6gy_13/HCT116_6gy_13_x.txt",col_names = FALSE)

HCT116_6gy_13_y <- read_table("Jacobdata/HCT116_6gy_13/HCT116_6gy_13_y.txt",col_names = FALSE)

HCT116_6gy_13_p53 <- read_table("Jacobdata/HCT116_6gy_13/HCT116_6gy_13_p53.txt",col_names = FALSE)

HCT116_6gy_14_x <- read_table("Jacobdata/HCT116_6gy_14/HCT116_6gy_14_x.txt",col_names = FALSE)

HCT116_6gy_14_y <- read_table("Jacobdata/HCT116_6gy_14/HCT116_6gy_14_y.txt",col_names = FALSE)

HCT116_6gy_14_p53 <- read_table("Jacobdata/HCT116_6gy_14/HCT116_6gy_14_p53.txt",col_names = FALSE)

HCT116_8gy_15_x <- read_table("Jacobdata/HCT116_8gy_15/HCT116_8gy_15_x.txt",col_names = FALSE)

HCT116_8gy_15_y <- read_table("Jacobdata/HCT116_8gy_15/HCT116_8gy_15_y.txt",col_names = FALSE)

HCT116_8gy_15_p53 <- read_table("Jacobdata/HCT116_8gy_15/HCT116_8gy_15_p53.txt",col_names = FALSE)

HCT116_8gy_16_x <- read_table("Jacobdata/HCT116_8gy_16/HCT116_8gy_16_x.txt",col_names = FALSE)

HCT116_8gy_16_y <- read_table("Jacobdata/HCT116_8gy_16/HCT116_8gy_16_y.txt",col_names = FALSE)

HCT116_8gy_16_p53 <- read_table("Jacobdata/HCT116_8gy_16/HCT116_8gy_16_p53.txt",col_names = FALSE)





lox_imv_1gy_3_x <- read_table("Jacobdata/lox-imv_1gy_3/lox-imv_1gy_3_x.txt",col_names = FALSE)

lox_imv_1gy_3_y <- read_table("Jacobdata/lox-imv_1gy_3/lox-imv_1gy_3_y.txt",col_names = FALSE)

lox_imv_1gy_3_p53 <- read_table("Jacobdata/lox-imv_1gy_3/lox-imv_1gy_3_p53.txt",col_names = FALSE)

lox_imv_1gy_4_x <- read_table("Jacobdata/lox-imv_1gy_4/lox-imv_1gy_4_x.txt",col_names = FALSE)

lox_imv_1gy_4_y <- read_table("Jacobdata/lox-imv_1gy_4/lox-imv_1gy_4_y.txt",col_names = FALSE)

lox_imv_1gy_4_p53 <- read_table("Jacobdata/lox-imv_1gy_4/lox-imv_1gy_4_p53.txt",col_names = FALSE)

lox_imv_2gy_3_x <- read_table("Jacobdata/lox-imv_2gy_3/lox-imv_2gy_3_x.txt",col_names = FALSE)

lox_imv_2gy_3_y <- read_table("Jacobdata/lox-imv_2gy_3/lox-imv_2gy_3_y.txt",col_names = FALSE)

lox_imv_2gy_3_p53 <- read_table("Jacobdata/lox-imv_2gy_3/lox-imv_2gy_3_p53.txt",col_names = FALSE)

lox_imv_2gy_4_x <- read_table("Jacobdata/lox-imv_2gy_4/lox-imv_2gy_4_x.txt",col_names = FALSE)

lox_imv_2gy_4_y <- read_table("Jacobdata/lox-imv_2gy_4/lox-imv_2gy_4_y.txt",col_names = FALSE)

lox_imv_2gy_4_p53 <- read_table("Jacobdata/lox-imv_2gy_4/lox-imv_2gy_4_p53.txt",col_names = FALSE)

lox_imv_4gy_3_x <- read_table("Jacobdata/lox-imv_4gy_3/lox-imv_4gy_3_x.txt",col_names = FALSE)

lox_imv_4gy_3_y <- read_table("Jacobdata/lox-imv_4gy_3/lox-imv_4gy_3_y.txt",col_names = FALSE)

lox_imv_4gy_3_p53 <- read_table("Jacobdata/lox-imv_4gy_3/lox-imv_4gy_3_p53.txt",col_names = FALSE)

lox_imv_4gy_4_x <- read_table("Jacobdata/lox-imv_4gy_4/lox-imv_4gy_4_x.txt",col_names = FALSE)

lox_imv_4gy_4_y <- read_table("Jacobdata/lox-imv_4gy_4/lox-imv_4gy_4_y.txt",col_names = FALSE)

lox_imv_4gy_4_p53 <- read_table("Jacobdata/lox-imv_4gy_4/lox-imv_4gy_4_p53.txt",col_names = FALSE)

lox_imv_6gy_22_x <- read_table("Jacobdata/lox-imv_6gy_22/lox-imv_6gy_22_x.txt",col_names = FALSE)

lox_imv_6gy_22_y <- read_table("Jacobdata/lox-imv_6gy_22/lox-imv_6gy_22_y.txt",col_names = FALSE)

lox_imv_6gy_22_p53 <- read_table("Jacobdata/lox-imv_6gy_22/lox-imv_6gy_22_p53.txt",col_names = FALSE)

lox_imv_6gy_23_x <- read_table("Jacobdata/lox-imv_6gy_23/lox-imv_6gy_23_x.txt",col_names = FALSE)

lox_imv_6gy_23_y <- read_table("Jacobdata/lox-imv_6gy_23/lox-imv_6gy_23_y.txt",col_names = FALSE)

lox_imv_6gy_23_p53 <- read_table("Jacobdata/lox-imv_6gy_23/lox-imv_6gy_23_p53.txt",col_names = FALSE)

lox_imv_8gy_23_x <- read_table("Jacobdata/lox-imv_8gy_23/lox-imv_8gy_23_x.txt",col_names = FALSE)

lox_imv_8gy_23_y <- read_table("Jacobdata/lox-imv_8gy_23/lox-imv_8gy_23_y.txt",col_names = FALSE)

lox_imv_8gy_23_p53 <- read_table("Jacobdata/lox-imv_8gy_23/lox-imv_8gy_23_p53.txt",col_names = FALSE)

lox_imv_8gy_24_x <- read_table("Jacobdata/lox-imv_8gy_24/lox-imv_8gy_24_x.txt",col_names = FALSE)

lox_imv_8gy_24_y <- read_table("Jacobdata/lox-imv_8gy_24/lox-imv_8gy_24_y.txt",col_names = FALSE)

lox_imv_8gy_24_p53 <- read_table("Jacobdata/lox-imv_8gy_24/lox-imv_8gy_24_p53.txt",col_names = FALSE)





malme_1gy_14_x <- read_table("Jacobdata/malme-3E_1gy_14/malme-3E_1gy_14_x.txt",col_names = FALSE)

malme_1gy_14_y <- read_table("Jacobdata/malme-3E_1gy_14/malme-3E_1gy_14_y.txt",col_names = FALSE)

malme_1gy_14_p53 <- read_table("Jacobdata/malme-3E_1gy_14/malme-3E_1gy_14_p53.txt",col_names = FALSE)

malme_1gy_15_x <- read_table("Jacobdata/malme-3E_1gy_15/malme-3E_1gy_15_x.txt",col_names = FALSE)

malme_1gy_15_y <- read_table("Jacobdata/malme-3E_1gy_15/malme-3E_1gy_15_y.txt",col_names = FALSE)

malme_1gy_15_p53 <- read_table("Jacobdata/malme-3E_1gy_15/malme-3E_1gy_15_p53.txt",col_names = FALSE)

malme_2gy_15_x <- read_table("Jacobdata/malme-3E_2gy_15/malme-3E_2gy_15_x.txt",col_names = FALSE)

malme_2gy_15_y <- read_table("Jacobdata/malme-3E_2gy_15/malme-3E_2gy_15_y.txt",col_names = FALSE)

malme_2gy_15_p53 <- read_table("Jacobdata/malme-3E_2gy_15/malme-3E_2gy_15_p53.txt",col_names = FALSE)

malme_2gy_16_x <- read_table("Jacobdata/malme-3E_2gy_16/malme-3E_2gy_16_x.txt",col_names = FALSE)

malme_2gy_16_y <- read_table("Jacobdata/malme-3E_2gy_16/malme-3E_2gy_16_y.txt",col_names = FALSE)

malme_2gy_16_p53 <- read_table("Jacobdata/malme-3E_2gy_16/malme-3E_2gy_16_p53.txt",col_names = FALSE)

malme_4gy_15_x <- read_table("Jacobdata/malme-3E_4gy_15/malme-3E_4gy_15_x.txt",col_names = FALSE)

malme_4gy_15_y <- read_table("Jacobdata/malme-3E_4gy_15/malme-3E_4gy_15_y.txt",col_names = FALSE)

malme_4gy_15_p53 <- read_table("Jacobdata/malme-3E_4gy_15/malme-3E_4gy_15_p53.txt",col_names = FALSE)

malme_4gy_16_x <- read_table("Jacobdata/malme-3E_4gy_16/malme-3E_4gy_16_x.txt",col_names = FALSE)

malme_4gy_16_y <- read_table("Jacobdata/malme-3E_4gy_16/malme-3E_4gy_16_y.txt",col_names = FALSE)

malme_4gy_16_p53 <- read_table("Jacobdata/malme-3E_4gy_16/malme-3E_4gy_16_p53.txt",col_names = FALSE)

malme_6gy_17_x <- read_table("Jacobdata/malme-3E_6gy_17/malme-3E_6gy_17_x.txt",col_names = FALSE)

malme_6gy_17_y <- read_table("Jacobdata/malme-3E_6gy_17/malme-3E_6gy_17_y.txt",col_names = FALSE)

malme_6gy_17_p53 <- read_table("Jacobdata/malme-3E_6gy_17/malme-3E_6gy_17_p53.txt",col_names = FALSE)

malme_6gy_18_x <- read_table("Jacobdata/malme-3E_6gy_18/malme-3E_6gy_18_x.txt",col_names = FALSE)

malme_6gy_18_y <- read_table("Jacobdata/malme-3E_6gy_18/malme-3E_6gy_18_y.txt",col_names = FALSE)

malme_6gy_18_p53 <- read_table("Jacobdata/malme-3E_6gy_18/malme-3E_6gy_18_p53.txt",col_names = FALSE)

malme_8gy_17_x <- read_table("Jacobdata/malme-3E_8gy_17/malme-3E_8gy_17_x.txt",col_names = FALSE)

malme_8gy_17_y <- read_table("Jacobdata/malme-3E_8gy_17/malme-3E_8gy_17_y.txt",col_names = FALSE)

malme_8gy_17_p53 <- read_table("Jacobdata/malme-3E_8gy_17/malme-3E_8gy_17_p53.txt",col_names = FALSE)

malme_8gy_18_x <- read_table("Jacobdata/malme-3E_8gy_18/malme-3E_8gy_18_x.txt",col_names = FALSE)

malme_8gy_18_y <- read_table("Jacobdata/malme-3E_8gy_18/malme-3E_8gy_18_y.txt",col_names = FALSE)

malme_8gy_18_p53 <- read_table("Jacobdata/malme-3E_8gy_18/malme-3E_8gy_18_p53.txt",col_names = FALSE)





MCF7_1gy_16_x <- read_table("Jacobdata/MCF7_1gy_16/MCF7_1gy_16_x.txt",col_names = FALSE)

MCF7_1gy_16_y <- read_table("Jacobdata/MCF7_1gy_16/MCF7_1gy_16_y.txt",col_names = FALSE)

MCF7_1gy_16_p53 <- read_table("Jacobdata/MCF7_1gy_16/MCF7_1gy_16_p53.txt",col_names = FALSE)

MCF7_1gy_17_x <- read_table("Jacobdata/MCF7_1gy_17/MCF7_1gy_17_x.txt",col_names = FALSE)

MCF7_1gy_17_y <- read_table("Jacobdata/MCF7_1gy_17/MCF7_1gy_17_y.txt",col_names = FALSE)

MCF7_1gy_17_p53 <- read_table("Jacobdata/MCF7_1gy_17/MCF7_1gy_17_p53.txt",col_names = FALSE)

MCF7_2gy_17_x <- read_table("Jacobdata/MCF7_2gy_17/MCF7_2gy_17_x.txt",col_names = FALSE)

MCF7_2gy_17_y <- read_table("Jacobdata/MCF7_2gy_17/MCF7_2gy_17_y.txt",col_names = FALSE)

MCF7_2gy_17_p53 <- read_table("Jacobdata/MCF7_2gy_17/MCF7_2gy_17_p53.txt",col_names = FALSE)

MCF7_2gy_18_x <- read_table("Jacobdata/MCF7_2gy_18/MCF7_2gy_18_x.txt",col_names = FALSE)

MCF7_2gy_18_y <- read_table("Jacobdata/MCF7_2gy_18/MCF7_2gy_18_y.txt",col_names = FALSE)

MCF7_2gy_18_p53 <- read_table("Jacobdata/MCF7_2gy_18/MCF7_2gy_18_p53.txt",col_names = FALSE)

MCF7_4gy_17_x <- read_table("Jacobdata/MCF7_4gy_17/MCF7_4gy_17_x.txt",col_names = FALSE)

MCF7_4gy_17_y <- read_table("Jacobdata/MCF7_4gy_17/MCF7_4gy_17_y.txt",col_names = FALSE)

MCF7_4gy_17_p53 <- read_table("Jacobdata/MCF7_4gy_17/MCF7_4gy_17_p53.txt",col_names = FALSE)

MCF7_4gy_18_x <- read_table("Jacobdata/MCF7_4gy_18/MCF7_4gy_18_x.txt",col_names = FALSE)

MCF7_4gy_18_y <- read_table("Jacobdata/MCF7_4gy_18/MCF7_4gy_18_y.txt",col_names = FALSE)

MCF7_4gy_18_p53 <- read_table("Jacobdata/MCF7_4gy_18/MCF7_4gy_18_p53.txt",col_names = FALSE)

MCF7_6gy_1_x <- read_table("Jacobdata/MCF7_6gy_1/MCF7_6gy_1_x.txt",col_names = FALSE)

MCF7_6gy_1_y <- read_table("Jacobdata/MCF7_6gy_1/MCF7_6gy_1_y.txt",col_names = FALSE)

MCF7_6gy_1_p53 <- read_table("Jacobdata/MCF7_6gy_1/MCF7_6gy_1_p53.txt",col_names = FALSE)

MCF7_6gy_2_x <- read_table("Jacobdata/MCF7_6gy_2/MCF7_6gy_2_x.txt",col_names = FALSE)

MCF7_6gy_2_y <- read_table("Jacobdata/MCF7_6gy_2/MCF7_6gy_2_y.txt",col_names = FALSE)

MCF7_6gy_2_p53 <- read_table("Jacobdata/MCF7_6gy_2/MCF7_6gy_2_p53.txt",col_names = FALSE)

MCF7_8gy_1_x <- read_table("Jacobdata/MCF7_8gy_1/MCF7_8gy_1_x.txt",col_names = FALSE)

MCF7_8gy_1_y <- read_table("Jacobdata/MCF7_8gy_1/MCF7_8gy_1_y.txt",col_names = FALSE)

MCF7_8gy_1_p53 <- read_table("Jacobdata/MCF7_8gy_1/MCF7_8gy_1_p53.txt",col_names = FALSE)

MCF7_8gy_2_x <- read_table("Jacobdata/MCF7_8gy_2/MCF7_8gy_2_x.txt",col_names = FALSE)

MCF7_8gy_2_y <- read_table("Jacobdata/MCF7_8gy_2/MCF7_8gy_2_y.txt",col_names = FALSE)

MCF7_8gy_2_p53 <- read_table("Jacobdata/MCF7_8gy_2/MCF7_8gy_2_p53.txt",col_names = FALSE)






sk_mel5_1gy_18_x <- read_table("Jacobdata/sk-mel5_1gy_18/sk-mel5_1gy_18_x.txt",col_names = FALSE)

sk_mel5_1gy_18_y <- read_table("Jacobdata/sk-mel5_1gy_18/sk-mel5_1gy_18_y.txt",col_names = FALSE)

sk_mel5_1gy_18_p53 <- read_table("Jacobdata/sk-mel5_1gy_18/sk-mel5_1gy_18_p53.txt",col_names = FALSE)

sk_mel5_1gy_19_x <- read_table("Jacobdata/sk-mel5_1gy_19/sk-mel5_1gy_19_x.txt",col_names = FALSE)

sk_mel5_1gy_19_y <- read_table("Jacobdata/sk-mel5_1gy_19/sk-mel5_1gy_19_y.txt",col_names = FALSE)

sk_mel5_1gy_19_p53 <- read_table("Jacobdata/sk-mel5_1gy_19/sk-mel5_1gy_19_p53.txt",col_names = FALSE)

sk_mel5_1gy_20_x <- read_table("Jacobdata/sk-mel5_1gy_20/sk-mel5_1gy_20_x.txt",col_names = FALSE)

sk_mel5_1gy_20_y <- read_table("Jacobdata/sk-mel5_1gy_20/sk-mel5_1gy_20_y.txt",col_names = FALSE)

sk_mel5_1gy_20_p53 <- read_table("Jacobdata/sk-mel5_1gy_20/sk-mel5_1gy_20_p53.txt",col_names = FALSE)

sk_mel5_1gy_21_x <- read_table("Jacobdata/sk-mel5_1gy_21/sk-mel5_1gy_21_x.txt",col_names = FALSE)

sk_mel5_1gy_21_y <- read_table("Jacobdata/sk-mel5_1gy_21/sk-mel5_1gy_21_y.txt",col_names = FALSE)

sk_mel5_1gy_21_p53 <- read_table("Jacobdata/sk-mel5_1gy_21/sk-mel5_1gy_21_p53.txt",col_names = FALSE)

sk_mel5_2gy_22_x <- read_table("Jacobdata/sk-mel5_2gy_22/sk-mel5_2gy_22_x.txt",col_names = FALSE)

sk_mel5_2gy_22_y <- read_table("Jacobdata/sk-mel5_2gy_22/sk-mel5_2gy_22_y.txt",col_names = FALSE)

sk_mel5_2gy_22_p53 <- read_table("Jacobdata/sk-mel5_2gy_22/sk-mel5_2gy_22_p53.txt",col_names = FALSE)

sk_mel5_2gy_23_x <- read_table("Jacobdata/sk-mel5_2gy_23/sk-mel5_2gy_23_x.txt",col_names = FALSE)

sk_mel5_2gy_23_y <- read_table("Jacobdata/sk-mel5_2gy_23/sk-mel5_2gy_23_y.txt",col_names = FALSE)

sk_mel5_2gy_23_p53 <- read_table("Jacobdata/sk-mel5_2gy_23/sk-mel5_2gy_23_p53.txt",col_names = FALSE)

sk_mel5_4gy_19_x <- read_table("Jacobdata/sk-mel5_4gy_19/sk-mel5_4gy_19_x.txt",col_names = FALSE)

sk_mel5_4gy_19_y <- read_table("Jacobdata/sk-mel5_4gy_19/sk-mel5_4gy_19_y.txt",col_names = FALSE)

sk_mel5_4gy_19_p53 <- read_table("Jacobdata/sk-mel5_4gy_19/sk-mel5_4gy_19_p53.txt",col_names = FALSE)

sk_mel5_4gy_20_x <- read_table("Jacobdata/sk-mel5_4gy_20/sk-mel5_4gy_20_x.txt",col_names = FALSE)

sk_mel5_4gy_20_y <- read_table("Jacobdata/sk-mel5_4gy_20/sk-mel5_4gy_20_y.txt",col_names = FALSE)

sk_mel5_4gy_20_p53 <- read_table("Jacobdata/sk-mel5_4gy_20/sk-mel5_4gy_20_p53.txt",col_names = FALSE)

sk_mel5_4gy_21_x <- read_table("Jacobdata/sk-mel5_4gy_21/sk-mel5_4gy_21_x.txt",col_names = FALSE)

sk_mel5_4gy_21_y <- read_table("Jacobdata/sk-mel5_4gy_21/sk-mel5_4gy_21_y.txt",col_names = FALSE)

sk_mel5_4gy_21_p53 <- read_table("Jacobdata/sk-mel5_4gy_21/sk-mel5_4gy_21_p53.txt",col_names = FALSE)

sk_mel5_4gy_22_x <- read_table("Jacobdata/sk-mel5_4gy_22/sk-mel5_4gy_22_x.txt",col_names = FALSE)

sk_mel5_4gy_22_y <- read_table("Jacobdata/sk-mel5_4gy_22/sk-mel5_4gy_22_y.txt",col_names = FALSE)

sk_mel5_4gy_22_p53 <- read_table("Jacobdata/sk-mel5_4gy_22/sk-mel5_4gy_22_p53.txt",col_names = FALSE)

sk_mel5_4gy_23_x <- read_table("Jacobdata/sk-mel5_4gy_23/sk-mel5_4gy_23_x.txt",col_names = FALSE)

sk_mel5_4gy_23_y <- read_table("Jacobdata/sk-mel5_4gy_23/sk-mel5_4gy_23_y.txt",col_names = FALSE)

sk_mel5_4gy_23_p53 <- read_table("Jacobdata/sk-mel5_4gy_23/sk-mel5_4gy_23_p53.txt",col_names = FALSE)

sk_mel5_6gy_19_x <- read_table("Jacobdata/sk-mel5_6gy_19/sk-mel5_6gy_19_x.txt",col_names = FALSE)

sk_mel5_6gy_19_y <- read_table("Jacobdata/sk-mel5_6gy_19/sk-mel5_6gy_19_y.txt",col_names = FALSE)

sk_mel5_6gy_19_p53 <- read_table("Jacobdata/sk-mel5_6gy_19/sk-mel5_6gy_19_p53.txt",col_names = FALSE)

sk_mel5_6gy_20_x <- read_table("Jacobdata/sk-mel5_6gy_20/sk-mel5_6gy_20_x.txt",col_names = FALSE)

sk_mel5_6gy_20_y <- read_table("Jacobdata/sk-mel5_6gy_20/sk-mel5_6gy_20_y.txt",col_names = FALSE)

sk_mel5_6gy_20_p53 <- read_table("Jacobdata/sk-mel5_6gy_20/sk-mel5_6gy_20_p53.txt",col_names = FALSE)

sk_mel5_6gy_21_x <- read_table("Jacobdata/sk-mel5_6gy_21/sk-mel5_6gy_21_x.txt",col_names = FALSE)

sk_mel5_6gy_21_y <- read_table("Jacobdata/sk-mel5_6gy_21/sk-mel5_6gy_21_y.txt",col_names = FALSE)

sk_mel5_6gy_21_p53 <- read_table("Jacobdata/sk-mel5_6gy_21/sk-mel5_6gy_21_p53.txt",col_names = FALSE)

sk_mel5_8gy_19_x <- read_table("Jacobdata/sk-mel5_8gy_19/sk-mel5_8gy_19_x.txt",col_names = FALSE)

sk_mel5_8gy_19_y <- read_table("Jacobdata/sk-mel5_8gy_19/sk-mel5_8gy_19_y.txt",col_names = FALSE)

sk_mel5_8gy_19_p53 <- read_table("Jacobdata/sk-mel5_8gy_19/sk-mel5_8gy_19_p53.txt",col_names = FALSE)

sk_mel5_8gy_20_x <- read_table("Jacobdata/sk-mel5_8gy_20/sk-mel5_8gy_20_x.txt",col_names = FALSE)

sk_mel5_8gy_20_y <- read_table("Jacobdata/sk-mel5_8gy_20/sk-mel5_8gy_20_y.txt",col_names = FALSE)

sk_mel5_8gy_20_p53 <- read_table("Jacobdata/sk-mel5_8gy_20/sk-mel5_8gy_20_p53.txt",col_names = FALSE)






u2os_1gy_1_x <- read_table("Jacobdata/u2os_1gy_1/u2os_1gy_1_x.txt",col_names = FALSE)

u2os_1gy_1_y <- read_table("Jacobdata/u2os_1gy_1/u2os_1gy_1_y.txt",col_names = FALSE)

u2os_1gy_1_p53 <- read_table("Jacobdata/u2os_1gy_1/u2os_1gy_1_p53.txt",col_names = FALSE)

u2os_1gy_2_x <- read_table("Jacobdata/u2os_1gy_2/u2os_1gy_2_x.txt",col_names = FALSE)

u2os_1gy_2_y <- read_table("Jacobdata/u2os_1gy_2/u2os_1gy_2_y.txt",col_names = FALSE)

u2os_1gy_2_p53 <- read_table("Jacobdata/u2os_1gy_2/u2os_1gy_2_p53.txt",col_names = FALSE)

u2os_2gy_1_x <- read_table("Jacobdata/u2os_2gy_1/u2os_2gy_1_x.txt",col_names = FALSE)

u2os_2gy_1_y <- read_table("Jacobdata/u2os_2gy_1/u2os_2gy_1_y.txt",col_names = FALSE)

u2os_2gy_1_p53 <- read_table("Jacobdata/u2os_2gy_1/u2os_2gy_1_p53.txt",col_names = FALSE)

u2os_2gy_2_x <- read_table("Jacobdata/u2os_2gy_2/u2os_2gy_2_x.txt",col_names = FALSE)

u2os_2gy_2_y <- read_table("Jacobdata/u2os_2gy_2/u2os_2gy_2_y.txt",col_names = FALSE)

u2os_2gy_2_p53 <- read_table("Jacobdata/u2os_2gy_2/u2os_2gy_2_p53.txt",col_names = FALSE)

u2os_4gy_1_x <- read_table("Jacobdata/u2os_4gy_1/u2os_4gy_1_x.txt",col_names = FALSE)

u2os_4gy_1_y <- read_table("Jacobdata/u2os_4gy_1/u2os_4gy_1_y.txt",col_names = FALSE)

u2os_4gy_1_p53 <- read_table("Jacobdata/u2os_4gy_1/u2os_4gy_1_p53.txt",col_names = FALSE)

u2os_4gy_2_x <- read_table("Jacobdata/u2os_4gy_2/u2os_4gy_2_x.txt",col_names = FALSE)

u2os_4gy_2_y <- read_table("Jacobdata/u2os_4gy_2/u2os_4gy_2_y.txt",col_names = FALSE)

u2os_4gy_2_p53 <- read_table("Jacobdata/u2os_4gy_2/u2os_4gy_2_p53.txt",col_names = FALSE)

u2os_6gy_24_x <- read_table("Jacobdata/u2os_6gy_24/u2os_6gy_24_x.txt",col_names = FALSE)

u2os_6gy_24_y <- read_table("Jacobdata/u2os_6gy_24/u2os_6gy_24_y.txt",col_names = FALSE)

u2os_6gy_24_p53 <- read_table("Jacobdata/u2os_6gy_24/u2os_6gy_24_p53.txt",col_names = FALSE)

u2os_6gy_25_x <- read_table("Jacobdata/u2os_6gy_25/u2os_6gy_25_x.txt",col_names = FALSE)

u2os_6gy_25_y <- read_table("Jacobdata/u2os_6gy_25/u2os_6gy_25_y.txt",col_names = FALSE)

u2os_6gy_25_p53 <- read_table("Jacobdata/u2os_6gy_25/u2os_6gy_25_p53.txt",col_names = FALSE)

u2os_8gy_21_x <- read_table("Jacobdata/u2os_8gy_21/u2os_8gy_21_x.txt",col_names = FALSE)

u2os_8gy_21_y <- read_table("Jacobdata/u2os_8gy_21/u2os_8gy_21_y.txt",col_names = FALSE)

u2os_8gy_21_p53 <- read_table("Jacobdata/u2os_8gy_21/u2os_8gy_21_p53.txt",col_names = FALSE)

u2os_8gy_22_x <- read_table("Jacobdata/u2os_8gy_22/u2os_8gy_22_x.txt",col_names = FALSE)

u2os_8gy_22_y <- read_table("Jacobdata/u2os_8gy_22/u2os_8gy_22_y.txt",col_names = FALSE)

u2os_8gy_22_p53 <- read_table("Jacobdata/u2os_8gy_22/u2os_8gy_22_p53.txt",col_names = FALSE)





uacc62_1gy_7_x <- read_table("Jacobdata/uacc62_1gy_7/uacc62_1gy_7_x.txt",col_names = FALSE)

uacc62_1gy_7_y <- read_table("Jacobdata/uacc62_1gy_7/uacc62_1gy_7_y.txt",col_names = FALSE)

uacc62_1gy_7_p53 <- read_table("Jacobdata/uacc62_1gy_7/uacc62_1gy_7_p53.txt",col_names = FALSE)

uacc62_1gy_8_x <- read_table("Jacobdata/uacc62_1gy_8/uacc62_1gy_8_x.txt",col_names = FALSE)

uacc62_1gy_8_y <- read_table("Jacobdata/uacc62_1gy_8/uacc62_1gy_8_y.txt",col_names = FALSE)

uacc62_1gy_8_p53 <- read_table("Jacobdata/uacc62_1gy_8/uacc62_1gy_8_p53.txt",col_names = FALSE)

uacc62_2gy_7_x <- read_table("Jacobdata/uacc62_2gy_7/uacc62_2gy_7_x.txt",col_names = FALSE)

uacc62_2gy_7_y <- read_table("Jacobdata/uacc62_2gy_7/uacc62_2gy_7_y.txt",col_names = FALSE)

uacc62_2gy_7_p53 <- read_table("Jacobdata/uacc62_2gy_7/uacc62_2gy_7_p53.txt",col_names = FALSE)

uacc62_2gy_8_x <- read_table("Jacobdata/uacc62_2gy_8/uacc62_2gy_8_x.txt",col_names = FALSE)

uacc62_2gy_8_y <- read_table("Jacobdata/uacc62_2gy_8/uacc62_2gy_8_y.txt",col_names = FALSE)

uacc62_2gy_8_p53 <- read_table("Jacobdata/uacc62_2gy_8/uacc62_2gy_8_p53.txt",col_names = FALSE)

uacc62_4gy_7_x <- read_table("Jacobdata/uacc62_4gy_7/uacc62_4gy_7_x.txt",col_names = FALSE)

uacc62_4gy_7_y <- read_table("Jacobdata/uacc62_4gy_7/uacc62_4gy_7_y.txt",col_names = FALSE)

uacc62_4gy_7_p53 <- read_table("Jacobdata/uacc62_4gy_7/uacc62_4gy_7_p53.txt",col_names = FALSE)

uacc62_4gy_8_x <- read_table("Jacobdata/uacc62_4gy_8/uacc62_4gy_8_x.txt",col_names = FALSE)

uacc62_4gy_8_y <- read_table("Jacobdata/uacc62_4gy_8/uacc62_4gy_8_y.txt",col_names = FALSE)

uacc62_4gy_8_p53 <- read_table("Jacobdata/uacc62_4gy_8/uacc62_4gy_8_p53.txt",col_names = FALSE)

uacc62_6gy_8_x <- read_table("Jacobdata/uacc62_6gy_8/uacc62_6gy_8_x.txt",col_names = FALSE)

uacc62_6gy_8_y <- read_table("Jacobdata/uacc62_6gy_8/uacc62_6gy_8_y.txt",col_names = FALSE)

uacc62_6gy_8_p53 <- read_table("Jacobdata/uacc62_6gy_8/uacc62_6gy_8_p53.txt",col_names = FALSE)

uacc62_6gy_9_x <- read_table("Jacobdata/uacc62_6gy_9/uacc62_6gy_9_x.txt",col_names = FALSE)

uacc62_6gy_9_y <- read_table("Jacobdata/uacc62_6gy_9/uacc62_6gy_9_y.txt",col_names = FALSE)

uacc62_6gy_9_p53 <- read_table("Jacobdata/uacc62_6gy_9/uacc62_6gy_9_p53.txt",col_names = FALSE)

uacc62_8gy_9_x <- read_table("Jacobdata/uacc62_8gy_9/uacc62_8gy_9_x.txt",col_names = FALSE)

uacc62_8gy_9_y <- read_table("Jacobdata/uacc62_8gy_9/uacc62_8gy_9_y.txt",col_names = FALSE)

uacc62_8gy_9_p53 <- read_table("Jacobdata/uacc62_8gy_9/uacc62_8gy_9_p53.txt",col_names = FALSE)

uacc62_8gy_10_x <- read_table("Jacobdata/uacc62_8gy_10/uacc62_8gy_10_x.txt",col_names = FALSE)

uacc62_8gy_10_y <- read_table("Jacobdata/uacc62_8gy_10/uacc62_8gy_10_y.txt",col_names = FALSE)

uacc62_8gy_10_p53 <- read_table("Jacobdata/uacc62_8gy_10/uacc62_8gy_10_p53.txt",col_names = FALSE)





UACC257_1gy_22_x <- read_table("Jacobdata/UACC257_1gy_22/UACC257_1gy_22_x.txt",col_names = FALSE)

UACC257_1gy_22_y <- read_table("Jacobdata/UACC257_1gy_22/UACC257_1gy_22_y.txt",col_names = FALSE)

UACC257_1gy_22_p53 <- read_table("Jacobdata/UACC257_1gy_22/UACC257_1gy_22_p53.txt",col_names = FALSE)

UACC257_1gy_23_x <- read_table("Jacobdata/UACC257_1gy_23/UACC257_1gy_23_x.txt",col_names = FALSE)

UACC257_1gy_23_y <- read_table("Jacobdata/UACC257_1gy_23/UACC257_1gy_23_y.txt",col_names = FALSE)

UACC257_1gy_23_p53 <- read_table("Jacobdata/UACC257_1gy_23/UACC257_1gy_23_p53.txt",col_names = FALSE)

UACC257_2gy_24_x <- read_table("Jacobdata/UACC257_2gy_24/UACC257_2gy_24_x.txt",col_names = FALSE)

UACC257_2gy_24_y <- read_table("Jacobdata/UACC257_2gy_24/UACC257_2gy_24_y.txt",col_names = FALSE)

UACC257_2gy_24_p53 <- read_table("Jacobdata/UACC257_2gy_24/UACC257_2gy_24_p53.txt",col_names = FALSE)

UACC257_2gy_25_x <- read_table("Jacobdata/UACC257_2gy_25/UACC257_2gy_25_x.txt",col_names = FALSE)

UACC257_2gy_25_y <- read_table("Jacobdata/UACC257_2gy_25/UACC257_2gy_25_y.txt",col_names = FALSE)

UACC257_2gy_25_p53 <- read_table("Jacobdata/UACC257_2gy_25/UACC257_2gy_25_p53.txt",col_names = FALSE)

UACC257_4gy_24_x <- read_table("Jacobdata/UACC257_4gy_24/UACC257_4gy_24_x.txt",col_names = FALSE)

UACC257_4gy_24_y <- read_table("Jacobdata/UACC257_4gy_24/UACC257_4gy_24_y.txt",col_names = FALSE)

UACC257_4gy_24_p53 <- read_table("Jacobdata/UACC257_4gy_24/UACC257_4gy_24_p53.txt",col_names = FALSE)

UACC257_4gy_25_x <- read_table("Jacobdata/UACC257_4gy_25/UACC257_4gy_25_x.txt",col_names = FALSE)

UACC257_4gy_25_y <- read_table("Jacobdata/UACC257_4gy_25/UACC257_4gy_25_y.txt",col_names = FALSE)

UACC257_4gy_25_p53 <- read_table("Jacobdata/UACC257_4gy_25/UACC257_4gy_25_p53.txt",col_names = FALSE)

UACC257_6gy_3_x <- read_table("Jacobdata/UACC257_6gy_3/UACC257_6gy_3_x.txt",col_names = FALSE)

UACC257_6gy_3_y <- read_table("Jacobdata/UACC257_6gy_3/UACC257_6gy_3_y.txt",col_names = FALSE)

UACC257_6gy_3_p53 <- read_table("Jacobdata/UACC257_6gy_3/UACC257_6gy_3_p53.txt",col_names = FALSE)

UACC257_6gy_4_x <- read_table("Jacobdata/UACC257_6gy_4/UACC257_6gy_4_x.txt",col_names = FALSE)

UACC257_6gy_4_y <- read_table("Jacobdata/UACC257_6gy_4/UACC257_6gy_4_y.txt",col_names = FALSE)

UACC257_6gy_4_p53 <- read_table("Jacobdata/UACC257_6gy_4/UACC257_6gy_4_p53.txt",col_names = FALSE)

UACC257_8gy_3_x <- read_table("Jacobdata/UACC257_8gy_3/UACC257_8gy_3_x.txt",col_names = FALSE)

UACC257_8gy_3_y <- read_table("Jacobdata/UACC257_8gy_3/UACC257_8gy_3_y.txt",col_names = FALSE)

UACC257_8gy_3_p53 <- read_table("Jacobdata/UACC257_8gy_3/UACC257_8gy_3_p53.txt",col_names = FALSE)

UACC257_8gy_4_x <- read_table("Jacobdata/UACC257_8gy_4/UACC257_8gy_4_x.txt",col_names = FALSE)

UACC257_8gy_4_y <- read_table("Jacobdata/UACC257_8gy_4/UACC257_8gy_4_y.txt",col_names = FALSE)

UACC257_8gy_4_p53 <- read_table("Jacobdata/UACC257_8gy_4/UACC257_8gy_4_p53.txt",col_names = FALSE)





UO31_1gy_24_x <- read_table("Jacobdata/UO31_1gy_24/UO31_1gy_24_x.txt",col_names = FALSE)

UO31_1gy_24_y <- read_table("Jacobdata/UO31_1gy_24/UO31_1gy_24_y.txt",col_names = FALSE)

UO31_1gy_24_p53 <- read_table("Jacobdata/UO31_1gy_24/UO31_1gy_24_p53.txt",col_names = FALSE)

UO31_1gy_25_x <- read_table("Jacobdata/UO31_1gy_25/UO31_1gy_25_x.txt",col_names = FALSE)

UO31_1gy_25_y <- read_table("Jacobdata/UO31_1gy_25/UO31_1gy_25_y.txt",col_names = FALSE)

UO31_1gy_25_p53 <- read_table("Jacobdata/UO31_1gy_25/UO31_1gy_25_p53.txt",col_names = FALSE)

UO31_2gy_26_x <- read_table("Jacobdata/UO31_2gy_26/UO31_2gy_26_x.txt",col_names = FALSE)

UO31_2gy_26_y <- read_table("Jacobdata/UO31_2gy_26/UO31_2gy_26_y.txt",col_names = FALSE)

UO31_2gy_26_p53 <- read_table("Jacobdata/UO31_2gy_26/UO31_2gy_26_p53.txt",col_names = FALSE)

UO31_2gy_27_x <- read_table("Jacobdata/UO31_2gy_27/UO31_2gy_27_x.txt",col_names = FALSE)

UO31_2gy_27_y <- read_table("Jacobdata/UO31_2gy_27/UO31_2gy_27_y.txt",col_names = FALSE)

UO31_2gy_27_p53 <- read_table("Jacobdata/UO31_2gy_27/UO31_2gy_27_p53.txt",col_names = FALSE)

UO31_4gy_26_x <- read_table("Jacobdata/UO31_4gy_26/UO31_4gy_26_x.txt",col_names = FALSE)

UO31_4gy_26_y <- read_table("Jacobdata/UO31_4gy_26/UO31_4gy_26_y.txt",col_names = FALSE)

UO31_4gy_26_p53 <- read_table("Jacobdata/UO31_4gy_26/UO31_4gy_26_p53.txt",col_names = FALSE)

UO31_4gy_27_x <- read_table("Jacobdata/UO31_4gy_27/UO31_4gy_27_x.txt",col_names = FALSE)

UO31_4gy_27_y <- read_table("Jacobdata/UO31_4gy_27/UO31_4gy_27_y.txt",col_names = FALSE)

UO31_4gy_27_p53 <- read_table("Jacobdata/UO31_4gy_27/UO31_4gy_27_p53.txt",col_names = FALSE)

UO31_6gy_5_x <- read_table("Jacobdata/UO31_6gy_5/UO31_6gy_5_x.txt",col_names = FALSE)

UO31_6gy_5_y <- read_table("Jacobdata/UO31_6gy_5/UO31_6gy_5_y.txt",col_names = FALSE)

UO31_6gy_5_p53 <- read_table("Jacobdata/UO31_6gy_5/UO31_6gy_5_p53.txt",col_names = FALSE)

UO31_6gy_6_x <- read_table("Jacobdata/UO31_6gy_6/UO31_6gy_6_x.txt",col_names = FALSE)

UO31_6gy_6_y <- read_table("Jacobdata/UO31_6gy_6/UO31_6gy_6_y.txt",col_names = FALSE)

UO31_6gy_6_p53 <- read_table("Jacobdata/UO31_6gy_6/UO31_6gy_6_p53.txt",col_names = FALSE)

UO31_8gy_7_x <- read_table("Jacobdata/UO31_8gy_7/UO31_8gy_7_x.txt",col_names = FALSE)

UO31_8gy_7_y <- read_table("Jacobdata/UO31_8gy_7/UO31_8gy_7_y.txt",col_names = FALSE)

UO31_8gy_7_p53 <- read_table("Jacobdata/UO31_8gy_7/UO31_8gy_7_p53.txt",col_names = FALSE)

UO31_8gy_8_x <- read_table("Jacobdata/UO31_8gy_8/UO31_8gy_8_x.txt",col_names = FALSE)

UO31_8gy_8_y <- read_table("Jacobdata/UO31_8gy_8/UO31_8gy_8_y.txt",col_names = FALSE)

UO31_8gy_8_p53 <- read_table("Jacobdata/UO31_8gy_8/UO31_8gy_8_p53.txt",col_names = FALSE)



#### aggregate data ####

num.times <- ncol(a549_1gy_9_x)

time <- 1:num.times*15/60

dose1 <- rep(1,num.times)
dose2 <- rep(2,num.times)
dose4 <- rep(4,num.times)
dose6 <- rep(6,num.times)
dose8 <- rep(8,num.times) 

well1 <- rep(1,num.times)
well2 <- rep(2,num.times)
well3 <- rep(3,num.times)
well4 <- rep(4,num.times)
well5 <- rep(5,num.times)
well6 <- rep(6,num.times)
well7 <- rep(7,num.times)
well8 <- rep(8,num.times)
well9 <- rep(9,num.times)
well10 <- rep(10,num.times)
well11 <- rep(11,num.times)
well12 <- rep(12,num.times)
well13 <- rep(13,num.times)
well14 <- rep(14,num.times)
well15 <- rep(15,num.times)
well16 <- rep(16,num.times)
well17 <- rep(17,num.times)
well18 <- rep(18,num.times)
well19 <- rep(19,num.times)
well20 <- rep(20,num.times)
well21 <- rep(21,num.times)
well22 <- rep(22,num.times)
well23 <- rep(23,num.times)
well24 <- rep(24,num.times)
well25 <- rep(25,num.times)
well26 <- rep(26,num.times)
well27 <- rep(27,num.times)

type_a498 <- as.data.frame(rep("a498",num.times))
type_a549 <- as.data.frame(rep("a549",num.times))
type_h460 <- rep("h460",num.times)
type_HCT116 <- rep("HCT116",num.times)
type_lox_imv <- rep("lox-imv",num.times)
type_malme <- rep("malme",num.times)
type_MCF7 <- rep("MCF7",num.times)
type_sk_mel5 <- rep("sk-mel5",num.times)
type_u2os <- rep("u2os",num.times)
type_uacc62 <- rep("uacc62",num.times)
type_UACC257 <- rep("UACC257",num.times)
type_UO31 <- rep("UO31",num.times)






num.cells.a498_1gy_5 <- nrow(a498_1gy_5_x)
a498_1gy_5.list <- vector(mode = "list", length = num.cells.a498_1gy_5)

for(k in 1:num.cells.a498_1gy_5){
  a498_1gy_5.list[[k]] <- cbind.data.frame(type_a498,t(rbind.data.frame(dose1,well5,time,
                                                                        a498_1gy_5_x[k,],
                                                                        a498_1gy_5_y[k,],
                                                                        a498_1gy_5_p53[k,])))
  colnames(a498_1gy_5.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a498_1gy_6 <- nrow(a498_1gy_6_x)
a498_1gy_6.list <- vector(mode = "list", length = num.cells.a498_1gy_6)

for(k in 1:num.cells.a498_1gy_6){
  a498_1gy_6.list[[k]] <- cbind.data.frame(type_a498,t(rbind.data.frame(dose1,well6,time,
                                                                        a498_1gy_6_x[k,],
                                                                        a498_1gy_6_y[k,],
                                                                        a498_1gy_6_p53[k,])))
  colnames(a498_1gy_6.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a498_2gy_5 <- nrow(a498_2gy_5_x)
a498_2gy_5.list <- vector(mode = "list", length = num.cells.a498_2gy_5)

for(k in 1:num.cells.a498_2gy_5){
  a498_2gy_5.list[[k]] <- cbind.data.frame(type_a498,t(rbind.data.frame(dose2,well5,time,
                                                                        a498_2gy_5_x[k,],
                                                                        a498_2gy_5_y[k,],
                                                                        a498_2gy_5_p53[k,])))
  colnames(a498_2gy_5.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a498_2gy_6 <- nrow(a498_2gy_6_x)
a498_2gy_6.list <- vector(mode = "list", length = num.cells.a498_2gy_6)

for(k in 1:num.cells.a498_2gy_6){
  a498_2gy_6.list[[k]] <- cbind.data.frame(type_a498,t(rbind.data.frame(dose2,well6,time,
                                                                        a498_2gy_6_x[k,],
                                                                        a498_2gy_6_y[k,],
                                                                        a498_2gy_6_p53[k,])))
  colnames(a498_2gy_6.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a498_4gy_5 <- nrow(a498_4gy_5_x)
a498_4gy_5.list <- vector(mode = "list", length = num.cells.a498_4gy_5)

for(k in 1:num.cells.a498_4gy_5){
  a498_4gy_5.list[[k]] <- cbind.data.frame(type_a498,t(rbind.data.frame(dose4,well5,time,
                                                                        a498_4gy_5_x[k,],
                                                                        a498_4gy_5_y[k,],
                                                                        a498_4gy_5_p53[k,])))
  colnames(a498_4gy_5.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a498_4gy_6 <- nrow(a498_4gy_6_x)
a498_4gy_6.list <- vector(mode = "list", length = num.cells.a498_4gy_6)

for(k in 1:num.cells.a498_4gy_6){
  a498_4gy_6.list[[k]] <- cbind.data.frame(type_a498,t(rbind.data.frame(dose4,well6,time,
                                                                        a498_4gy_6_x[k,],
                                                                        a498_4gy_6_y[k,],
                                                                        a498_4gy_6_p53[k,])))
  colnames(a498_4gy_6.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a498_6gy_7 <- nrow(a498_6gy_7_x)
a498_6gy_7.list <- vector(mode = "list", length = num.cells.a498_6gy_7)

for(k in 1:num.cells.a498_6gy_7){
  a498_6gy_7.list[[k]] <- cbind.data.frame(type_a498,t(rbind.data.frame(dose6,well7,time,
                                                                        a498_6gy_7_x[k,],
                                                                        a498_6gy_7_y[k,],
                                                                        a498_6gy_7_p53[k,])))
  colnames(a498_6gy_7.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a498_6gy_10 <- nrow(a498_6gy_10_x)
a498_6gy_10.list <- vector(mode = "list", length = num.cells.a498_6gy_10)

for(k in 1:num.cells.a498_6gy_10){
  a498_6gy_10.list[[k]] <- cbind.data.frame(type_a498,t(rbind.data.frame(dose6,well10,time,
                                                                         a498_6gy_10_x[k,],
                                                                         a498_6gy_10_y[k,],
                                                                         a498_6gy_10_p53[k,])))
  colnames(a498_6gy_10.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a498_8gy_5 <- nrow(a498_8gy_5_x)
a498_8gy_5.list <- vector(mode = "list", length = num.cells.a498_8gy_5)

for(k in 1:num.cells.a498_8gy_5){
  a498_8gy_5.list[[k]] <- cbind.data.frame(type_a498,t(rbind.data.frame(dose8,well5,time,
                                                                        a498_8gy_5_x[k,],
                                                                        a498_8gy_5_y[k,],
                                                                        a498_8gy_5_p53[k,])))
  colnames(a498_8gy_5.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a498_8gy_6 <- nrow(a498_8gy_6_x)
a498_8gy_6.list <- vector(mode = "list", length = num.cells.a498_8gy_6)

for(k in 1:num.cells.a498_8gy_6){
  a498_8gy_6.list[[k]] <- cbind.data.frame(type_a498,t(rbind.data.frame(dose8,well6,time,
                                                                        a498_8gy_6_x[k,],
                                                                        a498_8gy_6_y[k,],
                                                                        a498_8gy_6_p53[k,])))
  colnames(a498_8gy_6.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}





num.cells.a549_1gy_9 <- nrow(a549_1gy_9_x)
a549_1gy_9.list <- vector(mode = "list", length = num.cells.a549_1gy_9)

for(k in 1:num.cells.a549_1gy_9){
  a549_1gy_9.list[[k]] <- cbind.data.frame(type_a549,t(rbind.data.frame(dose1,well9,time,
                                                                        a549_1gy_9_x[k,],
                                                                        a549_1gy_9_y[k,],
                                                                        a549_1gy_9_p53[k,])))
  colnames(a549_1gy_9.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a549_1gy_10 <- nrow(a549_1gy_10_x)
a549_1gy_10.list <- vector(mode = "list", length = num.cells.a549_1gy_10)

for(k in 1:num.cells.a549_1gy_10){
  a549_1gy_10.list[[k]] <- cbind.data.frame(type_a549,t(rbind.data.frame(dose1,well10,time,
                                                                         a549_1gy_10_x[k,],
                                                                         a549_1gy_10_y[k,],
                                                                         a549_1gy_10_p53[k,])))
  colnames(a549_1gy_10.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.a549_2gy_9 <- nrow(a549_2gy_9_x)
a549_2gy_9.list <- vector(mode = "list", length = num.cells.a549_2gy_9)

for(k in 1:num.cells.a549_2gy_9){
  a549_2gy_9.list[[k]] <- cbind.data.frame(type_a549,t(rbind.data.frame(dose2,well9,time,
                                                                        a549_2gy_9_x[k,],
                                                                        a549_2gy_9_y[k,],
                                                                        a549_2gy_9_p53[k,])))
  colnames(a549_2gy_9.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a549_2gy_10 <- nrow(a549_2gy_10_x)
a549_2gy_10.list <- vector(mode = "list", length = num.cells.a549_2gy_10)

for(k in 1:num.cells.a549_2gy_10){
  a549_2gy_10.list[[k]] <- cbind.data.frame(type_a549,t(rbind.data.frame(dose2,well10,time,
                                                                         a549_2gy_10_x[k,],
                                                                         a549_2gy_10_y[k,],
                                                                         a549_2gy_10_p53[k,])))
  colnames(a549_2gy_10.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.a549_4gy_9 <- nrow(a549_4gy_9_x)
a549_4gy_9.list <- vector(mode = "list", length = num.cells.a549_4gy_9)

for(k in 1:num.cells.a549_4gy_9){
  a549_4gy_9.list[[k]] <- cbind.data.frame(type_a549,t(rbind.data.frame(dose4,well9,time,
                                                                        a549_4gy_9_x[k,],
                                                                        a549_4gy_9_y[k,],
                                                                        a549_4gy_9_p53[k,])))
  colnames(a549_4gy_9.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a549_4gy_10 <- nrow(a549_4gy_10_x)
a549_4gy_10.list <- vector(mode = "list", length = num.cells.a549_4gy_10)

for(k in 1:num.cells.a549_4gy_10){
  a549_4gy_10.list[[k]] <- cbind.data.frame(type_a549,t(rbind.data.frame(dose4,well10,time,
                                                                         a549_4gy_10_x[k,],
                                                                         a549_4gy_10_y[k,],
                                                                         a549_4gy_10_p53[k,])))
  colnames(a549_4gy_10.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.a549_6gy_11 <- nrow(a549_6gy_11_x)
a549_6gy_11.list <- vector(mode = "list", length = num.cells.a549_6gy_11)

for(k in 1:num.cells.a549_6gy_11){
  a549_6gy_11.list[[k]] <- cbind.data.frame(type_a549,t(rbind.data.frame(dose6,well11,time,
                                                                         a549_6gy_11_x[k,],
                                                                         a549_6gy_11_y[k,],
                                                                         a549_6gy_11_p53[k,])))
  colnames(a549_6gy_11.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a549_6gy_12 <- nrow(a549_6gy_12_x)
a549_6gy_12.list <- vector(mode = "list", length = num.cells.a549_6gy_12)

for(k in 1:num.cells.a549_6gy_12){
  a549_6gy_12.list[[k]] <- cbind.data.frame(type_a549,t(rbind.data.frame(dose6,well12,time,
                                                                         a549_6gy_12_x[k,],
                                                                         a549_6gy_12_y[k,],
                                                                         a549_6gy_12_p53[k,])))
  colnames(a549_6gy_12.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.a549_8gy_11 <- nrow(a549_8gy_11_x)
a549_8gy_11.list <- vector(mode = "list", length = num.cells.a549_8gy_11)

for(k in 1:num.cells.a549_8gy_11){
  a549_8gy_11.list[[k]] <- cbind.data.frame(type_a549,t(rbind.data.frame(dose8,well11,time,
                                                                         a549_8gy_11_x[k,],
                                                                         a549_8gy_11_y[k,],
                                                                         a549_8gy_11_p53[k,])))
  colnames(a549_8gy_11.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.a549_8gy_12 <- nrow(a549_8gy_12_x)
a549_8gy_12.list <- vector(mode = "list", length = num.cells.a549_8gy_12)

for(k in 1:num.cells.a549_8gy_12){
  a549_8gy_12.list[[k]] <- cbind.data.frame(type_a549,t(rbind.data.frame(dose8,well12,time,
                                                                         a549_8gy_12_x[k,],
                                                                         a549_8gy_12_y[k,],
                                                                         a549_8gy_12_p53[k,])))
  colnames(a549_8gy_12.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.h460_1gy_11 <- nrow(h460_1gy_11_x)
h460_1gy_11.list <- vector(mode = "list", length = num.cells.h460_1gy_11)

for(k in 1:num.cells.h460_1gy_11){
  h460_1gy_11.list[[k]] <- cbind.data.frame(type_h460,t(rbind.data.frame(dose1,well11,time,
                                                                         h460_1gy_11_x[k,],
                                                                         h460_1gy_11_y[k,],
                                                                         h460_1gy_11_p53[k,])))
  colnames(h460_1gy_11.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.h460_1gy_12 <- nrow(h460_1gy_12_x)
h460_1gy_12.list <- vector(mode = "list", length = num.cells.h460_1gy_12)

for(k in 1:num.cells.h460_1gy_12){
  h460_1gy_12.list[[k]] <- cbind.data.frame(type_h460,t(rbind.data.frame(dose1,well12,time,
                                                                         h460_1gy_12_x[k,],
                                                                         h460_1gy_12_y[k,],
                                                                         h460_1gy_12_p53[k,])))
  colnames(h460_1gy_12.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.h460_2gy_11 <- nrow(h460_2gy_11_x)
h460_2gy_11.list <- vector(mode = "list", length = num.cells.h460_2gy_11)

for(k in 1:num.cells.h460_2gy_11){
  h460_2gy_11.list[[k]] <- cbind.data.frame(type_h460,t(rbind.data.frame(dose2,well11,time,
                                                                         h460_2gy_11_x[k,],
                                                                         h460_2gy_11_y[k,],
                                                                         h460_2gy_11_p53[k,])))
  colnames(h460_2gy_11.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.h460_2gy_12 <- nrow(h460_2gy_12_x)
h460_2gy_12.list <- vector(mode = "list", length = num.cells.h460_2gy_12)

for(k in 1:num.cells.h460_2gy_12){
  h460_2gy_12.list[[k]] <- cbind.data.frame(type_h460,t(rbind.data.frame(dose2,well12,time,
                                                                         h460_2gy_12_x[k,],
                                                                         h460_2gy_12_y[k,],
                                                                         h460_2gy_12_p53[k,])))
  colnames(h460_2gy_12.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.h460_4gy_11 <- nrow(h460_4gy_11_x)
h460_4gy_11.list <- vector(mode = "list", length = num.cells.h460_4gy_11)

for(k in 1:num.cells.h460_4gy_11){
  h460_4gy_11.list[[k]] <- cbind.data.frame(type_h460,t(rbind.data.frame(dose4,well11,time,
                                                                         h460_4gy_11_x[k,],
                                                                         h460_4gy_11_y[k,],
                                                                         h460_4gy_11_p53[k,])))
  colnames(h460_4gy_11.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.h460_4gy_12 <- nrow(h460_4gy_12_x)
h460_4gy_12.list <- vector(mode = "list", length = num.cells.h460_4gy_12)

for(k in 1:num.cells.h460_4gy_12){
  h460_4gy_12.list[[k]] <- cbind.data.frame(type_h460,t(rbind.data.frame(dose4,well12,time,
                                                                         h460_4gy_12_x[k,],
                                                                         h460_4gy_12_y[k,],
                                                                         h460_4gy_12_p53[k,])))
  colnames(h460_4gy_12.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.h460_6gy_15 <- nrow(h460_6gy_15_x)
h460_6gy_15.list <- vector(mode = "list", length = num.cells.h460_6gy_15)

for(k in 1:num.cells.h460_6gy_15){
  h460_6gy_15.list[[k]] <- cbind.data.frame(type_h460,t(rbind.data.frame(dose6,well15,time,
                                                                         h460_6gy_15_x[k,],
                                                                         h460_6gy_15_y[k,],
                                                                         h460_6gy_15_p53[k,])))
  colnames(h460_6gy_15.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.h460_6gy_16 <- nrow(h460_6gy_16_x)
h460_6gy_16.list <- vector(mode = "list", length = num.cells.h460_6gy_16)

for(k in 1:num.cells.h460_6gy_16){
  h460_6gy_16.list[[k]] <- cbind.data.frame(type_h460,t(rbind.data.frame(dose6,well16,time,
                                                                         h460_6gy_16_x[k,],
                                                                         h460_6gy_16_y[k,],
                                                                         h460_6gy_16_p53[k,])))
  colnames(h460_6gy_16.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.h460_8gy_13 <- nrow(h460_8gy_13_x)
h460_8gy_13.list <- vector(mode = "list", length = num.cells.h460_8gy_13)

for(k in 1:num.cells.h460_8gy_13){
  h460_8gy_13.list[[k]] <- cbind.data.frame(type_h460,t(rbind.data.frame(dose8,well13,time,
                                                                         h460_8gy_13_x[k,],
                                                                         h460_8gy_13_y[k,],
                                                                         h460_8gy_13_p53[k,])))
  colnames(h460_8gy_13.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.h460_8gy_14 <- nrow(h460_8gy_14_x)
h460_8gy_14.list <- vector(mode = "list", length = num.cells.h460_8gy_14)

for(k in 1:num.cells.h460_8gy_14){
  h460_8gy_14.list[[k]] <- cbind.data.frame(type_h460,t(rbind.data.frame(dose8,well14,time,
                                                                         h460_8gy_14_x[k,],
                                                                         h460_8gy_14_y[k,],
                                                                         h460_8gy_14_p53[k,])))
  colnames(h460_8gy_14.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.HCT116_1gy_13 <- nrow(HCT116_1gy_13_x)
HCT116_1gy_13.list <- vector(mode = "list", length = num.cells.HCT116_1gy_13)

for(k in 1:num.cells.HCT116_1gy_13){
  HCT116_1gy_13.list[[k]] <- cbind.data.frame(type_HCT116,t(rbind.data.frame(dose1,well13,time,
                                                                             HCT116_1gy_13_x[k,],
                                                                             HCT116_1gy_13_y[k,],
                                                                             HCT116_1gy_13_p53[k,])))
  colnames(HCT116_1gy_13.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.HCT116_2gy_13 <- nrow(HCT116_2gy_13_x)
HCT116_2gy_13.list <- vector(mode = "list", length = num.cells.HCT116_2gy_13)

for(k in 1:num.cells.HCT116_2gy_13){
  HCT116_2gy_13.list[[k]] <- cbind.data.frame(type_HCT116,t(rbind.data.frame(dose2,well13,time,
                                                                             HCT116_2gy_13_x[k,],
                                                                             HCT116_2gy_13_y[k,],
                                                                             HCT116_2gy_13_p53[k,])))
  colnames(HCT116_2gy_13.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.HCT116_2gy_14 <- nrow(HCT116_2gy_14_x)
HCT116_2gy_14.list <- vector(mode = "list", length = num.cells.HCT116_2gy_14)

for(k in 1:num.cells.HCT116_2gy_14){
  HCT116_2gy_14.list[[k]] <- cbind.data.frame(type_HCT116,t(rbind.data.frame(dose2,well14,time,
                                                                             HCT116_2gy_14_x[k,],
                                                                             HCT116_2gy_14_y[k,],
                                                                             HCT116_2gy_14_p53[k,])))
  colnames(HCT116_2gy_14.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.HCT116_4gy_13 <- nrow(HCT116_4gy_13_x)
HCT116_4gy_13.list <- vector(mode = "list", length = num.cells.HCT116_4gy_13)

for(k in 1:num.cells.HCT116_4gy_13){
  HCT116_4gy_13.list[[k]] <- cbind.data.frame(type_HCT116,t(rbind.data.frame(dose4,well13,time,
                                                                             HCT116_4gy_13_x[k,],
                                                                             HCT116_4gy_13_y[k,],
                                                                             HCT116_4gy_13_p53[k,])))
  colnames(HCT116_4gy_13.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.HCT116_4gy_14 <- nrow(HCT116_4gy_14_x)
HCT116_4gy_14.list <- vector(mode = "list", length = num.cells.HCT116_4gy_14)

for(k in 1:num.cells.HCT116_4gy_14){
  HCT116_4gy_14.list[[k]] <- cbind.data.frame(type_HCT116,t(rbind.data.frame(dose4,well14,time,
                                                                             HCT116_4gy_14_x[k,],
                                                                             HCT116_4gy_14_y[k,],
                                                                             HCT116_4gy_14_p53[k,])))
  colnames(HCT116_4gy_14.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.HCT116_6gy_13 <- nrow(HCT116_6gy_13_x)
HCT116_6gy_13.list <- vector(mode = "list", length = num.cells.HCT116_6gy_13)

for(k in 1:num.cells.HCT116_6gy_13){
  HCT116_6gy_13.list[[k]] <- cbind.data.frame(type_HCT116,t(rbind.data.frame(dose6,well13,time,
                                                                             HCT116_6gy_13_x[k,],
                                                                             HCT116_6gy_13_y[k,],
                                                                             HCT116_6gy_13_p53[k,])))
  colnames(HCT116_6gy_13.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.HCT116_6gy_14 <- nrow(HCT116_6gy_14_x)
HCT116_6gy_14.list <- vector(mode = "list", length = num.cells.HCT116_6gy_14)

for(k in 1:num.cells.HCT116_6gy_14){
  HCT116_6gy_14.list[[k]] <- cbind.data.frame(type_HCT116,t(rbind.data.frame(dose6,well14,time,
                                                                             HCT116_6gy_14_x[k,],
                                                                             HCT116_6gy_14_y[k,],
                                                                             HCT116_6gy_14_p53[k,])))
  colnames(HCT116_6gy_14.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.HCT116_8gy_15 <- nrow(HCT116_8gy_15_x)
HCT116_8gy_15.list <- vector(mode = "list", length = num.cells.HCT116_8gy_15)

for(k in 1:num.cells.HCT116_8gy_15){
  HCT116_8gy_15.list[[k]] <- cbind.data.frame(type_HCT116,t(rbind.data.frame(dose8,well15,time,
                                                                             HCT116_8gy_15_x[k,],
                                                                             HCT116_8gy_15_y[k,],
                                                                             HCT116_8gy_15_p53[k,])))
  colnames(HCT116_8gy_15.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.HCT116_8gy_16 <- nrow(HCT116_8gy_16_x)
HCT116_8gy_16.list <- vector(mode = "list", length = num.cells.HCT116_8gy_16)

for(k in 1:num.cells.HCT116_8gy_16){
  HCT116_8gy_16.list[[k]] <- cbind.data.frame(type_HCT116,t(rbind.data.frame(dose8,well16,time,
                                                                             HCT116_8gy_16_x[k,],
                                                                             HCT116_8gy_16_y[k,],
                                                                             HCT116_8gy_16_p53[k,])))
  colnames(HCT116_8gy_16.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.lox_imv_1gy_3 <- nrow(lox_imv_1gy_3_x)
lox_imv_1gy_3.list <- vector(mode = "list", length = num.cells.lox_imv_1gy_3)

for(k in 1:num.cells.lox_imv_1gy_3){
  lox_imv_1gy_3.list[[k]] <- cbind.data.frame(type_lox_imv,t(rbind.data.frame(dose1,well3,time,
                                                                              lox_imv_1gy_3_x[k,],
                                                                              lox_imv_1gy_3_y[k,],
                                                                              lox_imv_1gy_3_p53[k,])))
  colnames(lox_imv_1gy_3.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.lox_imv_1gy_4 <- nrow(lox_imv_1gy_4_x)
lox_imv_1gy_4.list <- vector(mode = "list", length = num.cells.lox_imv_1gy_4)

for(k in 1:num.cells.lox_imv_1gy_4){
  lox_imv_1gy_4.list[[k]] <- cbind.data.frame(type_lox_imv,t(rbind.data.frame(dose1,well4,time,
                                                                              lox_imv_1gy_4_x[k,],
                                                                              lox_imv_1gy_4_y[k,],
                                                                              lox_imv_1gy_4_p53[k,])))
  colnames(lox_imv_1gy_4.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}





num.cells.lox_imv_2gy_3 <- nrow(lox_imv_2gy_3_x)
lox_imv_2gy_3.list <- vector(mode = "list", length = num.cells.lox_imv_2gy_3)

for(k in 1:num.cells.lox_imv_2gy_3){
  lox_imv_2gy_3.list[[k]] <- cbind.data.frame(type_lox_imv,t(rbind.data.frame(dose2,well3,time,
                                                                              lox_imv_2gy_3_x[k,],
                                                                              lox_imv_2gy_3_y[k,],
                                                                              lox_imv_2gy_3_p53[k,])))
  colnames(lox_imv_2gy_3.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.lox_imv_2gy_4 <- nrow(lox_imv_2gy_4_x)
lox_imv_2gy_4.list <- vector(mode = "list", length = num.cells.lox_imv_2gy_4)

for(k in 1:num.cells.lox_imv_2gy_4){
  lox_imv_2gy_4.list[[k]] <- cbind.data.frame(type_lox_imv,t(rbind.data.frame(dose2,well4,time,
                                                                              lox_imv_2gy_4_x[k,],
                                                                              lox_imv_2gy_4_y[k,],
                                                                              lox_imv_2gy_4_p53[k,])))
  colnames(lox_imv_2gy_4.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.lox_imv_4gy_3 <- nrow(lox_imv_4gy_3_x)
lox_imv_4gy_3.list <- vector(mode = "list", length = num.cells.lox_imv_4gy_3)

for(k in 1:num.cells.lox_imv_4gy_3){
  lox_imv_4gy_3.list[[k]] <- cbind.data.frame(type_lox_imv,t(rbind.data.frame(dose4,well3,time,
                                                                              lox_imv_4gy_3_x[k,],
                                                                              lox_imv_4gy_3_y[k,],
                                                                              lox_imv_4gy_3_p53[k,])))
  colnames(lox_imv_4gy_3.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.lox_imv_4gy_4 <- nrow(lox_imv_4gy_4_x)
lox_imv_4gy_4.list <- vector(mode = "list", length = num.cells.lox_imv_4gy_4)

for(k in 1:num.cells.lox_imv_4gy_4){
  lox_imv_4gy_4.list[[k]] <- cbind.data.frame(type_lox_imv,t(rbind.data.frame(dose4,well4,time,
                                                                              lox_imv_4gy_4_x[k,],
                                                                              lox_imv_4gy_4_y[k,],
                                                                              lox_imv_4gy_4_p53[k,])))
  colnames(lox_imv_4gy_4.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.lox_imv_6gy_22 <- nrow(lox_imv_6gy_22_x)
lox_imv_6gy_22.list <- vector(mode = "list", length = num.cells.lox_imv_6gy_22)

for(k in 1:num.cells.lox_imv_6gy_22){
  lox_imv_6gy_22.list[[k]] <- cbind.data.frame(type_lox_imv,t(rbind.data.frame(dose6,well22,time,
                                                                               lox_imv_6gy_22_x[k,],
                                                                               lox_imv_6gy_22_y[k,],
                                                                               lox_imv_6gy_22_p53[k,])))
  colnames(lox_imv_6gy_22.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.lox_imv_6gy_23 <- nrow(lox_imv_6gy_23_x)
lox_imv_6gy_23.list <- vector(mode = "list", length = num.cells.lox_imv_6gy_23)

for(k in 1:num.cells.lox_imv_6gy_23){
  lox_imv_6gy_23.list[[k]] <- cbind.data.frame(type_lox_imv,t(rbind.data.frame(dose6,well23,time,
                                                                               lox_imv_6gy_23_x[k,],
                                                                               lox_imv_6gy_23_y[k,],
                                                                               lox_imv_6gy_23_p53[k,])))
  colnames(lox_imv_6gy_23.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}






num.cells.lox_imv_8gy_23 <- nrow(lox_imv_8gy_23_x)
lox_imv_8gy_23.list <- vector(mode = "list", length = num.cells.lox_imv_8gy_23)

for(k in 1:num.cells.lox_imv_8gy_23){
  lox_imv_8gy_23.list[[k]] <- cbind.data.frame(type_lox_imv,t(rbind.data.frame(dose8,well23,time,
                                                                               lox_imv_8gy_23_x[k,],
                                                                               lox_imv_8gy_23_y[k,],
                                                                               lox_imv_8gy_23_p53[k,])))
  colnames(lox_imv_8gy_23.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.lox_imv_8gy_24 <- nrow(lox_imv_8gy_24_x)
lox_imv_8gy_24.list <- vector(mode = "list", length = num.cells.lox_imv_8gy_24)

for(k in 1:num.cells.lox_imv_8gy_24){
  lox_imv_8gy_24.list[[k]] <- cbind.data.frame(type_lox_imv,t(rbind.data.frame(dose8,well24,time,
                                                                               lox_imv_8gy_24_x[k,],
                                                                               lox_imv_8gy_24_y[k,],
                                                                               lox_imv_8gy_24_p53[k,])))
  colnames(lox_imv_8gy_24.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.malme_1gy_14 <- nrow(malme_1gy_14_x)
malme_1gy_14.list <- vector(mode = "list", length = num.cells.malme_1gy_14)

for(k in 1:num.cells.malme_1gy_14){
  malme_1gy_14.list[[k]] <- cbind.data.frame(type_malme,t(rbind.data.frame(dose1,well14,time,
                                                                           malme_1gy_14_x[k,],
                                                                           malme_1gy_14_y[k,],
                                                                           malme_1gy_14_p53[k,])))
  colnames(malme_1gy_14.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.malme_1gy_15 <- nrow(malme_1gy_15_x)
malme_1gy_15.list <- vector(mode = "list", length = num.cells.malme_1gy_15)

for(k in 1:num.cells.malme_1gy_15){
  malme_1gy_15.list[[k]] <- cbind.data.frame(type_malme,t(rbind.data.frame(dose1,well15,time,
                                                                           malme_1gy_15_x[k,],
                                                                           malme_1gy_15_y[k,],
                                                                           malme_1gy_15_p53[k,])))
  colnames(malme_1gy_15.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.malme_2gy_15 <- nrow(malme_2gy_15_x)
malme_2gy_15.list <- vector(mode = "list", length = num.cells.malme_2gy_15)

for(k in 1:num.cells.malme_2gy_15){
  malme_2gy_15.list[[k]] <- cbind.data.frame(type_malme,t(rbind.data.frame(dose2,well15,time,
                                                                           malme_2gy_15_x[k,],
                                                                           malme_2gy_15_y[k,],
                                                                           malme_2gy_15_p53[k,])))
  colnames(malme_2gy_15.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.malme_2gy_16 <- nrow(malme_2gy_16_x)
malme_2gy_16.list <- vector(mode = "list", length = num.cells.malme_2gy_16)

for(k in 1:num.cells.malme_2gy_16){
  malme_2gy_16.list[[k]] <- cbind.data.frame(type_malme,t(rbind.data.frame(dose2,well16,time,
                                                                           malme_2gy_16_x[k,],
                                                                           malme_2gy_16_y[k,],
                                                                           malme_2gy_16_p53[k,])))
  colnames(malme_2gy_16.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.malme_4gy_15 <- nrow(malme_4gy_15_x)
malme_4gy_15.list <- vector(mode = "list", length = num.cells.malme_4gy_15)

for(k in 1:num.cells.malme_4gy_15){
  malme_4gy_15.list[[k]] <- cbind.data.frame(type_malme,t(rbind.data.frame(dose4,well15,time,
                                                                           malme_4gy_15_x[k,],
                                                                           malme_4gy_15_y[k,],
                                                                           malme_4gy_15_p53[k,])))
  colnames(malme_4gy_15.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.malme_4gy_16 <- nrow(malme_4gy_16_x)
malme_4gy_16.list <- vector(mode = "list", length = num.cells.malme_4gy_16)

for(k in 1:num.cells.malme_4gy_16){
  malme_4gy_16.list[[k]] <- cbind.data.frame(type_malme,t(rbind.data.frame(dose4,well16,time,
                                                                           malme_4gy_16_x[k,],
                                                                           malme_4gy_16_y[k,],
                                                                           malme_4gy_16_p53[k,])))
  colnames(malme_4gy_16.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.malme_6gy_17 <- nrow(malme_6gy_17_x)
malme_6gy_17.list <- vector(mode = "list", length = num.cells.malme_6gy_17)

for(k in 1:num.cells.malme_6gy_17){
  malme_6gy_17.list[[k]] <- cbind.data.frame(type_malme,t(rbind.data.frame(dose6,well15,time,
                                                                           malme_6gy_17_x[k,],
                                                                           malme_6gy_17_y[k,],
                                                                           malme_6gy_17_p53[k,])))
  colnames(malme_6gy_17.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.malme_6gy_18 <- nrow(malme_6gy_18_x)
malme_6gy_18.list <- vector(mode = "list", length = num.cells.malme_6gy_18)

for(k in 1:num.cells.malme_6gy_18){
  malme_6gy_18.list[[k]] <- cbind.data.frame(type_malme,t(rbind.data.frame(dose6,well16,time,
                                                                           malme_6gy_18_x[k,],
                                                                           malme_6gy_18_y[k,],
                                                                           malme_6gy_18_p53[k,])))
  colnames(malme_6gy_18.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.malme_8gy_17 <- nrow(malme_8gy_17_x)
malme_8gy_17.list <- vector(mode = "list", length = num.cells.malme_8gy_17)

for(k in 1:num.cells.malme_8gy_17){
  malme_8gy_17.list[[k]] <- cbind.data.frame(type_malme,t(rbind.data.frame(dose8,well15,time,
                                                                           malme_8gy_17_x[k,],
                                                                           malme_8gy_17_y[k,],
                                                                           malme_8gy_17_p53[k,])))
  colnames(malme_8gy_17.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.malme_8gy_18 <- nrow(malme_8gy_18_x)
malme_8gy_18.list <- vector(mode = "list", length = num.cells.malme_8gy_18)

for(k in 1:num.cells.malme_8gy_18){
  malme_8gy_18.list[[k]] <- cbind.data.frame(type_malme,t(rbind.data.frame(dose8,well18,time,
                                                                           malme_8gy_18_x[k,],
                                                                           malme_8gy_18_y[k,],
                                                                           malme_8gy_18_p53[k,])))
  colnames(malme_8gy_18.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.MCF7_1gy_16 <- nrow(MCF7_1gy_16_x)
MCF7_1gy_16.list <- vector(mode = "list", length = num.cells.MCF7_1gy_16)

for(k in 1:num.cells.MCF7_1gy_16){
  MCF7_1gy_16.list[[k]] <- cbind.data.frame(type_MCF7,t(rbind.data.frame(dose1,well16,time,
                                                                         MCF7_1gy_16_x[k,],
                                                                         MCF7_1gy_16_y[k,],
                                                                         MCF7_1gy_16_p53[k,])))
  colnames(MCF7_1gy_16.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.MCF7_1gy_17 <- nrow(MCF7_1gy_17_x)
MCF7_1gy_17.list <- vector(mode = "list", length = num.cells.MCF7_1gy_17)

for(k in 1:num.cells.MCF7_1gy_17){
  MCF7_1gy_17.list[[k]] <- cbind.data.frame(type_MCF7,t(rbind.data.frame(dose1,well17,time,
                                                                         MCF7_1gy_17_x[k,],
                                                                         MCF7_1gy_17_y[k,],
                                                                         MCF7_1gy_17_p53[k,])))
  colnames(MCF7_1gy_17.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.MCF7_2gy_17 <- nrow(MCF7_2gy_17_x)
MCF7_2gy_17.list <- vector(mode = "list", length = num.cells.MCF7_2gy_17)

for(k in 1:num.cells.MCF7_2gy_17){
  MCF7_2gy_17.list[[k]] <- cbind.data.frame(type_MCF7,t(rbind.data.frame(dose2,well17,time,
                                                                         MCF7_2gy_17_x[k,],
                                                                         MCF7_2gy_17_y[k,],
                                                                         MCF7_2gy_17_p53[k,])))
  colnames(MCF7_2gy_17.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.MCF7_2gy_18 <- nrow(MCF7_2gy_18_x)
MCF7_2gy_18.list <- vector(mode = "list", length = num.cells.MCF7_2gy_18)

for(k in 1:num.cells.MCF7_2gy_18){
  MCF7_2gy_18.list[[k]] <- cbind.data.frame(type_MCF7,t(rbind.data.frame(dose2,well18,time,
                                                                         MCF7_2gy_18_x[k,],
                                                                         MCF7_2gy_18_y[k,],
                                                                         MCF7_2gy_18_p53[k,])))
  colnames(MCF7_2gy_18.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.MCF7_4gy_17 <- nrow(MCF7_4gy_17_x)
MCF7_4gy_17.list <- vector(mode = "list", length = num.cells.MCF7_4gy_17)

for(k in 1:num.cells.MCF7_4gy_17){
  MCF7_4gy_17.list[[k]] <- cbind.data.frame(type_MCF7,t(rbind.data.frame(dose4,well17,time,
                                                                         MCF7_4gy_17_x[k,],
                                                                         MCF7_4gy_17_y[k,],
                                                                         MCF7_4gy_17_p53[k,])))
  colnames(MCF7_4gy_17.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.MCF7_4gy_18 <- nrow(MCF7_4gy_18_x)
MCF7_4gy_18.list <- vector(mode = "list", length = num.cells.MCF7_4gy_18)

for(k in 1:num.cells.MCF7_4gy_18){
  MCF7_4gy_18.list[[k]] <- cbind.data.frame(type_MCF7,t(rbind.data.frame(dose4,well18,time,
                                                                         MCF7_4gy_18_x[k,],
                                                                         MCF7_4gy_18_y[k,],
                                                                         MCF7_4gy_18_p53[k,])))
  colnames(MCF7_4gy_18.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.MCF7_6gy_1 <- nrow(MCF7_6gy_1_x)
MCF7_6gy_1.list <- vector(mode = "list", length = num.cells.MCF7_6gy_1)

for(k in 1:num.cells.MCF7_6gy_1){
  MCF7_6gy_1.list[[k]] <- cbind.data.frame(type_MCF7,t(rbind.data.frame(dose6,well1,time,
                                                                        MCF7_6gy_1_x[k,],
                                                                        MCF7_6gy_1_y[k,],
                                                                        MCF7_6gy_1_p53[k,])))
  colnames(MCF7_6gy_1.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.MCF7_6gy_2 <- nrow(MCF7_6gy_2_x)
MCF7_6gy_2.list <- vector(mode = "list", length = num.cells.MCF7_6gy_2)

for(k in 1:num.cells.MCF7_6gy_2){
  MCF7_6gy_2.list[[k]] <- cbind.data.frame(type_MCF7,t(rbind.data.frame(dose6,well2,time,
                                                                        MCF7_6gy_2_x[k,],
                                                                        MCF7_6gy_2_y[k,],
                                                                        MCF7_6gy_2_p53[k,])))
  colnames(MCF7_6gy_2.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}





num.cells.MCF7_8gy_1 <- nrow(MCF7_8gy_1_x)
MCF7_8gy_1.list <- vector(mode = "list", length = num.cells.MCF7_8gy_1)

for(k in 1:num.cells.MCF7_8gy_1){
  MCF7_8gy_1.list[[k]] <- cbind.data.frame(type_MCF7,t(rbind.data.frame(dose8,well1,time,
                                                                        MCF7_8gy_1_x[k,],
                                                                        MCF7_8gy_1_y[k,],
                                                                        MCF7_8gy_1_p53[k,])))
  colnames(MCF7_8gy_1.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.MCF7_8gy_2 <- nrow(MCF7_8gy_2_x)
MCF7_8gy_2.list <- vector(mode = "list", length = num.cells.MCF7_8gy_2)

for(k in 1:num.cells.MCF7_8gy_2){
  MCF7_8gy_2.list[[k]] <- cbind.data.frame(type_MCF7,t(rbind.data.frame(dose8,well2,time,
                                                                        MCF7_8gy_2_x[k,],
                                                                        MCF7_8gy_2_y[k,],
                                                                        MCF7_8gy_2_p53[k,])))
  colnames(MCF7_8gy_2.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.sk_mel5_1gy_18 <- nrow(sk_mel5_1gy_18_x)
sk_mel5_1gy_18.list <- vector(mode = "list", length = num.cells.sk_mel5_1gy_18)

for(k in 1:num.cells.sk_mel5_1gy_18){
  sk_mel5_1gy_18.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose1,well18,time,
                                                                               sk_mel5_1gy_18_x[k,],
                                                                               sk_mel5_1gy_18_y[k,],
                                                                               sk_mel5_1gy_18_p53[k,])))
  colnames(sk_mel5_1gy_18.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.sk_mel5_1gy_19 <- nrow(sk_mel5_1gy_19_x)
sk_mel5_1gy_19.list <- vector(mode = "list", length = num.cells.sk_mel5_1gy_19)

for(k in 1:num.cells.sk_mel5_1gy_19){
  sk_mel5_1gy_19.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose1,well19,time,
                                                                               sk_mel5_1gy_19_x[k,],
                                                                               sk_mel5_1gy_19_y[k,],
                                                                               sk_mel5_1gy_19_p53[k,])))
  colnames(sk_mel5_1gy_19.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.sk_mel5_1gy_20 <- nrow(sk_mel5_1gy_20_x)
sk_mel5_1gy_20.list <- vector(mode = "list", length = num.cells.sk_mel5_1gy_20)

for(k in 1:num.cells.sk_mel5_1gy_20){
  sk_mel5_1gy_20.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose1,well20,time,
                                                                               sk_mel5_1gy_20_x[k,],
                                                                               sk_mel5_1gy_20_y[k,],
                                                                               sk_mel5_1gy_20_p53[k,])))
  colnames(sk_mel5_1gy_20.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.sk_mel5_1gy_21 <- nrow(sk_mel5_1gy_21_x)
sk_mel5_1gy_21.list <- vector(mode = "list", length = num.cells.sk_mel5_1gy_21)

for(k in 1:num.cells.sk_mel5_1gy_21){
  sk_mel5_1gy_21.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose1,well21,time,
                                                                               sk_mel5_1gy_21_x[k,],
                                                                               sk_mel5_1gy_21_y[k,],
                                                                               sk_mel5_1gy_21_p53[k,])))
  colnames(sk_mel5_1gy_21.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.sk_mel5_2gy_22 <- nrow(sk_mel5_2gy_22_x)
sk_mel5_2gy_22.list <- vector(mode = "list", length = num.cells.sk_mel5_2gy_22)

for(k in 1:num.cells.sk_mel5_2gy_22){
  sk_mel5_2gy_22.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose2,well22,time,
                                                                               sk_mel5_2gy_22_x[k,],
                                                                               sk_mel5_2gy_22_y[k,],
                                                                               sk_mel5_2gy_22_p53[k,])))
  colnames(sk_mel5_2gy_22.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.sk_mel5_2gy_23 <- nrow(sk_mel5_2gy_23_x)
sk_mel5_2gy_23.list <- vector(mode = "list", length = num.cells.sk_mel5_2gy_23)

for(k in 1:num.cells.sk_mel5_2gy_23){
  sk_mel5_2gy_23.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose2,well23,time,
                                                                               sk_mel5_2gy_23_x[k,],
                                                                               sk_mel5_2gy_23_y[k,],
                                                                               sk_mel5_2gy_23_p53[k,])))
  colnames(sk_mel5_2gy_23.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.sk_mel5_4gy_19 <- nrow(sk_mel5_4gy_19_x)
sk_mel5_4gy_19.list <- vector(mode = "list", length = num.cells.sk_mel5_4gy_19)

for(k in 1:num.cells.sk_mel5_4gy_19){
  sk_mel5_4gy_19.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose4,well19,time,
                                                                               sk_mel5_4gy_19_x[k,],
                                                                               sk_mel5_4gy_19_y[k,],
                                                                               sk_mel5_4gy_19_p53[k,])))
  colnames(sk_mel5_4gy_19.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.sk_mel5_4gy_20 <- nrow(sk_mel5_4gy_20_x)
sk_mel5_4gy_20.list <- vector(mode = "list", length = num.cells.sk_mel5_4gy_20)

for(k in 1:num.cells.sk_mel5_4gy_20){
  sk_mel5_4gy_20.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose4,well20,time,
                                                                               sk_mel5_4gy_20_x[k,],
                                                                               sk_mel5_4gy_20_y[k,],
                                                                               sk_mel5_4gy_20_p53[k,])))
  colnames(sk_mel5_4gy_20.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.sk_mel5_4gy_21 <- nrow(sk_mel5_4gy_21_x)
sk_mel5_4gy_21.list <- vector(mode = "list", length = num.cells.sk_mel5_4gy_21)

for(k in 1:num.cells.sk_mel5_4gy_21){
  sk_mel5_4gy_21.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose4,well21,time,
                                                                               sk_mel5_4gy_21_x[k,],
                                                                               sk_mel5_4gy_21_y[k,],
                                                                               sk_mel5_4gy_21_p53[k,])))
  colnames(sk_mel5_4gy_21.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.sk_mel5_4gy_22 <- nrow(sk_mel5_4gy_22_x)
sk_mel5_4gy_22.list <- vector(mode = "list", length = num.cells.sk_mel5_4gy_22)

for(k in 1:num.cells.sk_mel5_4gy_22){
  sk_mel5_4gy_22.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose4,well22,time,
                                                                               sk_mel5_4gy_22_x[k,],
                                                                               sk_mel5_4gy_22_y[k,],
                                                                               sk_mel5_4gy_22_p53[k,])))
  colnames(sk_mel5_4gy_22.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.sk_mel5_4gy_23 <- nrow(sk_mel5_4gy_23_x)
sk_mel5_4gy_23.list <- vector(mode = "list", length = num.cells.sk_mel5_4gy_23)

for(k in 1:num.cells.sk_mel5_4gy_23){
  sk_mel5_4gy_23.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose4,well23,time,
                                                                               sk_mel5_4gy_23_x[k,],
                                                                               sk_mel5_4gy_23_y[k,],
                                                                               sk_mel5_4gy_23_p53[k,])))
  colnames(sk_mel5_4gy_23.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}






num.cells.sk_mel5_6gy_19 <- nrow(sk_mel5_6gy_19_x)
sk_mel5_6gy_19.list <- vector(mode = "list", length = num.cells.sk_mel5_6gy_19)

for(k in 1:num.cells.sk_mel5_6gy_19){
  sk_mel5_6gy_19.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose6,well19,time,
                                                                               sk_mel5_6gy_19_x[k,],
                                                                               sk_mel5_6gy_19_y[k,],
                                                                               sk_mel5_6gy_19_p53[k,])))
  colnames(sk_mel5_6gy_19.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.sk_mel5_6gy_20 <- nrow(sk_mel5_6gy_20_x)
sk_mel5_6gy_20.list <- vector(mode = "list", length = num.cells.sk_mel5_6gy_20)

for(k in 1:num.cells.sk_mel5_6gy_20){
  sk_mel5_6gy_20.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose6,well20,time,
                                                                               sk_mel5_6gy_20_x[k,],
                                                                               sk_mel5_6gy_20_y[k,],
                                                                               sk_mel5_6gy_20_p53[k,])))
  colnames(sk_mel5_6gy_20.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.sk_mel5_6gy_21 <- nrow(sk_mel5_6gy_21_x)
sk_mel5_6gy_21.list <- vector(mode = "list", length = num.cells.sk_mel5_6gy_21)

for(k in 1:num.cells.sk_mel5_6gy_21){
  sk_mel5_6gy_21.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose6,well21,time,
                                                                               sk_mel5_6gy_21_x[k,],
                                                                               sk_mel5_6gy_21_y[k,],
                                                                               sk_mel5_6gy_21_p53[k,])))
  colnames(sk_mel5_6gy_21.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.sk_mel5_8gy_19 <- nrow(sk_mel5_8gy_19_x)
sk_mel5_8gy_19.list <- vector(mode = "list", length = num.cells.sk_mel5_8gy_19)

for(k in 1:num.cells.sk_mel5_8gy_19){
  sk_mel5_8gy_19.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose8,well19,time,
                                                                               sk_mel5_8gy_19_x[k,],
                                                                               sk_mel5_8gy_19_y[k,],
                                                                               sk_mel5_8gy_19_p53[k,])))
  colnames(sk_mel5_8gy_19.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.sk_mel5_8gy_20 <- nrow(sk_mel5_8gy_20_x)
sk_mel5_8gy_20.list <- vector(mode = "list", length = num.cells.sk_mel5_8gy_20)

for(k in 1:num.cells.sk_mel5_8gy_20){
  sk_mel5_8gy_20.list[[k]] <- cbind.data.frame(type_sk_mel5,t(rbind.data.frame(dose8,well20,time,
                                                                               sk_mel5_8gy_20_x[k,],
                                                                               sk_mel5_8gy_20_y[k,],
                                                                               sk_mel5_8gy_20_p53[k,])))
  colnames(sk_mel5_8gy_20.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}





num.cells.u2os_1gy_1 <- nrow(u2os_1gy_1_x)
u2os_1gy_1.list <- vector(mode = "list", length = num.cells.u2os_1gy_1)

for(k in 1:num.cells.u2os_1gy_1){
  u2os_1gy_1.list[[k]] <- cbind.data.frame(type_u2os,t(rbind.data.frame(dose1,well1,time,
                                                                        u2os_1gy_1_x[k,],
                                                                        u2os_1gy_1_y[k,],
                                                                        u2os_1gy_1_p53[k,])))
  colnames(u2os_1gy_1.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.u2os_1gy_2 <- nrow(u2os_1gy_2_x)
u2os_1gy_2.list <- vector(mode = "list", length = num.cells.u2os_1gy_2)

for(k in 1:num.cells.u2os_1gy_2){
  u2os_1gy_2.list[[k]] <- cbind.data.frame(type_u2os,t(rbind.data.frame(dose1,well2,time,
                                                                        u2os_1gy_2_x[k,],
                                                                        u2os_1gy_2_y[k,],
                                                                        u2os_1gy_2_p53[k,])))
  colnames(u2os_1gy_2.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.u2os_2gy_1 <- nrow(u2os_2gy_1_x)
u2os_2gy_1.list <- vector(mode = "list", length = num.cells.u2os_2gy_1)

for(k in 1:num.cells.u2os_2gy_1){
  u2os_2gy_1.list[[k]] <- cbind.data.frame(type_u2os,t(rbind.data.frame(dose2,well1,time,
                                                                        u2os_2gy_1_x[k,],
                                                                        u2os_2gy_1_y[k,],
                                                                        u2os_2gy_1_p53[k,])))
  colnames(u2os_2gy_1.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.u2os_2gy_2 <- nrow(u2os_2gy_2_x)
u2os_2gy_2.list <- vector(mode = "list", length = num.cells.u2os_2gy_2)

for(k in 1:num.cells.u2os_2gy_2){
  u2os_2gy_2.list[[k]] <- cbind.data.frame(type_u2os,t(rbind.data.frame(dose2,well2,time,
                                                                        u2os_2gy_2_x[k,],
                                                                        u2os_2gy_2_y[k,],
                                                                        u2os_2gy_2_p53[k,])))
  colnames(u2os_2gy_2.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.u2os_4gy_1 <- nrow(u2os_4gy_1_x)
u2os_4gy_1.list <- vector(mode = "list", length = num.cells.u2os_4gy_1)

for(k in 1:num.cells.u2os_4gy_1){
  u2os_4gy_1.list[[k]] <- cbind.data.frame(type_u2os,t(rbind.data.frame(dose4,well1,time,
                                                                        u2os_4gy_1_x[k,],
                                                                        u2os_4gy_1_y[k,],
                                                                        u2os_4gy_1_p53[k,])))
  colnames(u2os_4gy_1.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.u2os_4gy_2 <- nrow(u2os_4gy_2_x)
u2os_4gy_2.list <- vector(mode = "list", length = num.cells.u2os_4gy_2)

for(k in 1:num.cells.u2os_4gy_2){
  u2os_4gy_2.list[[k]] <- cbind.data.frame(type_u2os,t(rbind.data.frame(dose4,well2,time,
                                                                        u2os_4gy_2_x[k,],
                                                                        u2os_4gy_2_y[k,],
                                                                        u2os_4gy_2_p53[k,])))
  colnames(u2os_4gy_2.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.u2os_6gy_24 <- nrow(u2os_6gy_24_x)
u2os_6gy_24.list <- vector(mode = "list", length = num.cells.u2os_6gy_24)

for(k in 1:num.cells.u2os_6gy_24){
  u2os_6gy_24.list[[k]] <- cbind.data.frame(type_u2os,t(rbind.data.frame(dose6,well24,time,
                                                                         u2os_6gy_24_x[k,],
                                                                         u2os_6gy_24_y[k,],
                                                                         u2os_6gy_24_p53[k,])))
  colnames(u2os_6gy_24.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.u2os_6gy_25 <- nrow(u2os_6gy_25_x)
u2os_6gy_25.list <- vector(mode = "list", length = num.cells.u2os_6gy_25)

for(k in 1:num.cells.u2os_6gy_25){
  u2os_6gy_25.list[[k]] <- cbind.data.frame(type_u2os,t(rbind.data.frame(dose6,well25,time,
                                                                         u2os_6gy_25_x[k,],
                                                                         u2os_6gy_25_y[k,],
                                                                         u2os_6gy_25_p53[k,])))
  colnames(u2os_6gy_25.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.u2os_8gy_21 <- nrow(u2os_8gy_21_x)
u2os_8gy_21.list <- vector(mode = "list", length = num.cells.u2os_8gy_21)

for(k in 1:num.cells.u2os_8gy_21){
  u2os_8gy_21.list[[k]] <- cbind.data.frame(type_u2os,t(rbind.data.frame(dose8,well21,time,
                                                                         u2os_8gy_21_x[k,],
                                                                         u2os_8gy_21_y[k,],
                                                                         u2os_8gy_21_p53[k,])))
  colnames(u2os_8gy_21.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.u2os_8gy_22 <- nrow(u2os_8gy_22_x)
u2os_8gy_22.list <- vector(mode = "list", length = num.cells.u2os_8gy_22)

for(k in 1:num.cells.u2os_8gy_22){
  u2os_8gy_22.list[[k]] <- cbind.data.frame(type_u2os,t(rbind.data.frame(dose8,well22,time,
                                                                         u2os_8gy_22_x[k,],
                                                                         u2os_8gy_22_y[k,],
                                                                         u2os_8gy_22_p53[k,])))
  colnames(u2os_8gy_22.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.uacc62_1gy_7 <- nrow(uacc62_1gy_7_x)
uacc62_1gy_7.list <- vector(mode = "list", length = num.cells.uacc62_1gy_7)

for(k in 1:num.cells.uacc62_1gy_7){
  uacc62_1gy_7.list[[k]] <- cbind.data.frame(type_uacc62,t(rbind.data.frame(dose1,well7,time,
                                                                            uacc62_1gy_7_x[k,],
                                                                            uacc62_1gy_7_y[k,],
                                                                            uacc62_1gy_7_p53[k,])))
  colnames(uacc62_1gy_7.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.uacc62_1gy_8 <- nrow(uacc62_1gy_8_x)
uacc62_1gy_8.list <- vector(mode = "list", length = num.cells.uacc62_1gy_8)

for(k in 1:num.cells.uacc62_1gy_8){
  uacc62_1gy_8.list[[k]] <- cbind.data.frame(type_uacc62,t(rbind.data.frame(dose1,well8,time,
                                                                            uacc62_1gy_8_x[k,],
                                                                            uacc62_1gy_8_y[k,],
                                                                            uacc62_1gy_8_p53[k,])))
  colnames(uacc62_1gy_8.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.uacc62_2gy_7 <- nrow(uacc62_2gy_7_x)
uacc62_2gy_7.list <- vector(mode = "list", length = num.cells.uacc62_2gy_7)

for(k in 1:num.cells.uacc62_2gy_7){
  uacc62_2gy_7.list[[k]] <- cbind.data.frame(type_uacc62,t(rbind.data.frame(dose2,well7,time,
                                                                            uacc62_2gy_7_x[k,],
                                                                            uacc62_2gy_7_y[k,],
                                                                            uacc62_2gy_7_p53[k,])))
  colnames(uacc62_2gy_7.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.uacc62_2gy_8 <- nrow(uacc62_2gy_8_x)
uacc62_2gy_8.list <- vector(mode = "list", length = num.cells.uacc62_2gy_8)

for(k in 1:num.cells.uacc62_2gy_8){
  uacc62_2gy_8.list[[k]] <- cbind.data.frame(type_uacc62,t(rbind.data.frame(dose2,well8,time,
                                                                            uacc62_2gy_8_x[k,],
                                                                            uacc62_2gy_8_y[k,],
                                                                            uacc62_2gy_8_p53[k,])))
  colnames(uacc62_2gy_8.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}





num.cells.uacc62_4gy_7 <- nrow(uacc62_4gy_7_x)
uacc62_4gy_7.list <- vector(mode = "list", length = num.cells.uacc62_4gy_7)

for(k in 1:num.cells.uacc62_4gy_7){
  uacc62_4gy_7.list[[k]] <- cbind.data.frame(type_uacc62,t(rbind.data.frame(dose4,well7,time,
                                                                            uacc62_4gy_7_x[k,],
                                                                            uacc62_4gy_7_y[k,],
                                                                            uacc62_4gy_7_p53[k,])))
  colnames(uacc62_4gy_7.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.uacc62_4gy_8 <- nrow(uacc62_4gy_8_x)
uacc62_4gy_8.list <- vector(mode = "list", length = num.cells.uacc62_4gy_8)

for(k in 1:num.cells.uacc62_4gy_8){
  uacc62_4gy_8.list[[k]] <- cbind.data.frame(type_uacc62,t(rbind.data.frame(dose4,well8,time,
                                                                            uacc62_4gy_8_x[k,],
                                                                            uacc62_4gy_8_y[k,],
                                                                            uacc62_4gy_8_p53[k,])))
  colnames(uacc62_4gy_8.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}



num.cells.uacc62_6gy_8 <- nrow(uacc62_6gy_8_x)
uacc62_6gy_8.list <- vector(mode = "list", length = num.cells.uacc62_6gy_8)

for(k in 1:num.cells.uacc62_6gy_8){
  uacc62_6gy_8.list[[k]] <- cbind.data.frame(type_uacc62,t(rbind.data.frame(dose6,well8,time,
                                                                            uacc62_6gy_8_x[k,],
                                                                            uacc62_6gy_8_y[k,],
                                                                            uacc62_6gy_8_p53[k,])))
  colnames(uacc62_6gy_8.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.uacc62_6gy_9 <- nrow(uacc62_6gy_9_x)
uacc62_6gy_9.list <- vector(mode = "list", length = num.cells.uacc62_6gy_9)

for(k in 1:num.cells.uacc62_6gy_9){
  uacc62_6gy_9.list[[k]] <- cbind.data.frame(type_uacc62,t(rbind.data.frame(dose6,well9,time,
                                                                            uacc62_6gy_9_x[k,],
                                                                            uacc62_6gy_9_y[k,],
                                                                            uacc62_6gy_9_p53[k,])))
  colnames(uacc62_6gy_9.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.uacc62_8gy_9 <- nrow(uacc62_8gy_9_x)
uacc62_8gy_9.list <- vector(mode = "list", length = num.cells.uacc62_8gy_9)

for(k in 1:num.cells.uacc62_8gy_9){
  uacc62_8gy_9.list[[k]] <- cbind.data.frame(type_uacc62,t(rbind.data.frame(dose8,well9,time,
                                                                            uacc62_8gy_9_x[k,],
                                                                            uacc62_8gy_9_y[k,],
                                                                            uacc62_8gy_9_p53[k,])))
  colnames(uacc62_8gy_9.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}

num.cells.uacc62_8gy_10 <- nrow(uacc62_8gy_10_x)
uacc62_8gy_10.list <- vector(mode = "list", length = num.cells.uacc62_8gy_10)

for(k in 1:num.cells.uacc62_8gy_10){
  uacc62_8gy_10.list[[k]] <- cbind.data.frame(type_uacc62,t(rbind.data.frame(dose8,well10,time,
                                                                             uacc62_8gy_10_x[k,],
                                                                             uacc62_8gy_10_y[k,],
                                                                             uacc62_8gy_10_p53[k,])))
  colnames(uacc62_8gy_10.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.UACC257_1gy_22 <- nrow(UACC257_1gy_22_x)
UACC257_1gy_22.list <- vector(mode = "list", length = num.cells.UACC257_1gy_22)

for(k in 1:num.cells.UACC257_1gy_22){
  UACC257_1gy_22.list[[k]] <- cbind.data.frame(type_UACC257,t(rbind.data.frame(dose1,well22,time,
                                                                               UACC257_1gy_22_x[k,],
                                                                               UACC257_1gy_22_y[k,],
                                                                               UACC257_1gy_22_p53[k,])))
  colnames(UACC257_1gy_22.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.UACC257_1gy_23 <- nrow(UACC257_1gy_23_x)
UACC257_1gy_23.list <- vector(mode = "list", length = num.cells.UACC257_1gy_23)

for(k in 1:num.cells.UACC257_1gy_23){
  UACC257_1gy_23.list[[k]] <- cbind.data.frame(type_UACC257,t(rbind.data.frame(dose1,well23,time,
                                                                               UACC257_1gy_23_x[k,],
                                                                               UACC257_1gy_23_y[k,],
                                                                               UACC257_1gy_23_p53[k,])))
  colnames(UACC257_1gy_23.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}






num.cells.UACC257_2gy_24 <- nrow(UACC257_2gy_24_x)
UACC257_2gy_24.list <- vector(mode = "list", length = num.cells.UACC257_2gy_24)

for(k in 1:num.cells.UACC257_2gy_24){
  UACC257_2gy_24.list[[k]] <- cbind.data.frame(type_UACC257,t(rbind.data.frame(dose2,well24,time,
                                                                               UACC257_2gy_24_x[k,],
                                                                               UACC257_2gy_24_y[k,],
                                                                               UACC257_2gy_24_p53[k,])))
  colnames(UACC257_2gy_24.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.UACC257_2gy_25 <- nrow(UACC257_2gy_25_x)
UACC257_2gy_25.list <- vector(mode = "list", length = num.cells.UACC257_2gy_25)

for(k in 1:num.cells.UACC257_2gy_25){
  UACC257_2gy_25.list[[k]] <- cbind.data.frame(type_UACC257,t(rbind.data.frame(dose2,well25,time,
                                                                               UACC257_2gy_25_x[k,],
                                                                               UACC257_2gy_25_y[k,],
                                                                               UACC257_2gy_25_p53[k,])))
  colnames(UACC257_2gy_25.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.UACC257_4gy_24 <- nrow(UACC257_4gy_24_x)
UACC257_4gy_24.list <- vector(mode = "list", length = num.cells.UACC257_4gy_24)

for(k in 1:num.cells.UACC257_4gy_24){
  UACC257_4gy_24.list[[k]] <- cbind.data.frame(type_UACC257,t(rbind.data.frame(dose4,well24,time,
                                                                               UACC257_4gy_24_x[k,],
                                                                               UACC257_4gy_24_y[k,],
                                                                               UACC257_4gy_24_p53[k,])))
  colnames(UACC257_4gy_24.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.UACC257_4gy_25 <- nrow(UACC257_4gy_25_x)
UACC257_4gy_25.list <- vector(mode = "list", length = num.cells.UACC257_4gy_25)

for(k in 1:num.cells.UACC257_4gy_25){
  UACC257_4gy_25.list[[k]] <- cbind.data.frame(type_UACC257,t(rbind.data.frame(dose4,well25,time,
                                                                               UACC257_4gy_25_x[k,],
                                                                               UACC257_4gy_25_y[k,],
                                                                               UACC257_4gy_25_p53[k,])))
  colnames(UACC257_4gy_25.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}





num.cells.UACC257_6gy_3 <- nrow(UACC257_6gy_3_x)
UACC257_6gy_3.list <- vector(mode = "list", length = num.cells.UACC257_6gy_3)

for(k in 1:num.cells.UACC257_6gy_3){
  UACC257_6gy_3.list[[k]] <- cbind.data.frame(type_UACC257,t(rbind.data.frame(dose6,well3,time,
                                                                              UACC257_6gy_3_x[k,],
                                                                              UACC257_6gy_3_y[k,],
                                                                              UACC257_6gy_3_p53[k,])))
  colnames(UACC257_6gy_3.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.UACC257_6gy_4 <- nrow(UACC257_6gy_4_x)
UACC257_6gy_4.list <- vector(mode = "list", length = num.cells.UACC257_6gy_4)

for(k in 1:num.cells.UACC257_6gy_4){
  UACC257_6gy_4.list[[k]] <- cbind.data.frame(type_UACC257,t(rbind.data.frame(dose6,well4,time,
                                                                              UACC257_6gy_4_x[k,],
                                                                              UACC257_6gy_4_y[k,],
                                                                              UACC257_6gy_4_p53[k,])))
  colnames(UACC257_6gy_4.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.UACC257_8gy_3 <- nrow(UACC257_8gy_3_x)
UACC257_8gy_3.list <- vector(mode = "list", length = num.cells.UACC257_8gy_3)

for(k in 1:num.cells.UACC257_8gy_3){
  UACC257_8gy_3.list[[k]] <- cbind.data.frame(type_UACC257,t(rbind.data.frame(dose8,well3,time,
                                                                              UACC257_8gy_3_x[k,],
                                                                              UACC257_8gy_3_y[k,],
                                                                              UACC257_8gy_3_p53[k,])))
  colnames(UACC257_8gy_3.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.UACC257_8gy_4 <- nrow(UACC257_8gy_4_x)
UACC257_8gy_4.list <- vector(mode = "list", length = num.cells.UACC257_8gy_4)

for(k in 1:num.cells.UACC257_8gy_4){
  UACC257_8gy_4.list[[k]] <- cbind.data.frame(type_UACC257,t(rbind.data.frame(dose8,well4,time,
                                                                              UACC257_8gy_4_x[k,],
                                                                              UACC257_8gy_4_y[k,],
                                                                              UACC257_8gy_4_p53[k,])))
  colnames(UACC257_8gy_4.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




num.cells.UO31_1gy_24 <- nrow(UO31_1gy_24_x)
UO31_1gy_24.list <- vector(mode = "list", length = num.cells.UO31_1gy_24)

for(k in 1:num.cells.UO31_1gy_24){
  UO31_1gy_24.list[[k]] <- cbind.data.frame(type_UO31,t(rbind.data.frame(dose1,well24,time,
                                                                         UO31_1gy_24_x[k,],
                                                                         UO31_1gy_24_y[k,],
                                                                         UO31_1gy_24_p53[k,])))
  colnames(UO31_1gy_24.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.UO31_1gy_25 <- nrow(UO31_1gy_25_x)
UO31_1gy_25.list <- vector(mode = "list", length = num.cells.UO31_1gy_25)

for(k in 1:num.cells.UO31_1gy_25){
  UO31_1gy_25.list[[k]] <- cbind.data.frame(type_UO31,t(rbind.data.frame(dose1,well25,time,
                                                                         UO31_1gy_25_x[k,],
                                                                         UO31_1gy_25_y[k,],
                                                                         UO31_1gy_25_p53[k,])))
  colnames(UO31_1gy_25.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}





num.cells.UO31_2gy_26 <- nrow(UO31_2gy_26_x)
UO31_2gy_26.list <- vector(mode = "list", length = num.cells.UO31_2gy_26)

for(k in 1:num.cells.UO31_2gy_26){
  UO31_2gy_26.list[[k]] <- cbind.data.frame(type_UO31,t(rbind.data.frame(dose2,well26,time,
                                                                         UO31_2gy_26_x[k,],
                                                                         UO31_2gy_26_y[k,],
                                                                         UO31_2gy_26_p53[k,])))
  colnames(UO31_2gy_26.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.UO31_2gy_27 <- nrow(UO31_2gy_27_x)
UO31_2gy_27.list <- vector(mode = "list", length = num.cells.UO31_2gy_27)

for(k in 1:num.cells.UO31_2gy_27){
  UO31_2gy_27.list[[k]] <- cbind.data.frame(type_UO31,t(rbind.data.frame(dose2,well27,time,
                                                                         UO31_2gy_27_x[k,],
                                                                         UO31_2gy_27_y[k,],
                                                                         UO31_2gy_27_p53[k,])))
  colnames(UO31_2gy_27.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}






num.cells.UO31_4gy_26 <- nrow(UO31_4gy_26_x)
UO31_4gy_26.list <- vector(mode = "list", length = num.cells.UO31_4gy_26)

for(k in 1:num.cells.UO31_4gy_26){
  UO31_4gy_26.list[[k]] <- cbind.data.frame(type_UO31,t(rbind.data.frame(dose4,well26,time,
                                                                         UO31_4gy_26_x[k,],
                                                                         UO31_4gy_26_y[k,],
                                                                         UO31_4gy_26_p53[k,])))
  colnames(UO31_4gy_26.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.UO31_4gy_27 <- nrow(UO31_4gy_27_x)
UO31_4gy_27.list <- vector(mode = "list", length = num.cells.UO31_4gy_27)

for(k in 1:num.cells.UO31_4gy_27){
  UO31_4gy_27.list[[k]] <- cbind.data.frame(type_UO31,t(rbind.data.frame(dose4,well27,time,
                                                                         UO31_4gy_27_x[k,],
                                                                         UO31_4gy_27_y[k,],
                                                                         UO31_4gy_27_p53[k,])))
  colnames(UO31_4gy_27.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}





num.cells.UO31_6gy_5 <- nrow(UO31_6gy_5_x)
UO31_6gy_5.list <- vector(mode = "list", length = num.cells.UO31_6gy_5)

for(k in 1:num.cells.UO31_6gy_5){
  UO31_6gy_5.list[[k]] <- cbind.data.frame(type_UO31,t(rbind.data.frame(dose6,well5,time,
                                                                        UO31_6gy_5_x[k,],
                                                                        UO31_6gy_5_y[k,],
                                                                        UO31_6gy_5_p53[k,])))
  colnames(UO31_6gy_5.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.UO31_6gy_6 <- nrow(UO31_6gy_6_x)
UO31_6gy_6.list <- vector(mode = "list", length = num.cells.UO31_6gy_6)

for(k in 1:num.cells.UO31_6gy_6){
  UO31_6gy_6.list[[k]] <- cbind.data.frame(type_UO31,t(rbind.data.frame(dose6,well6,time,
                                                                        UO31_6gy_6_x[k,],
                                                                        UO31_6gy_6_y[k,],
                                                                        UO31_6gy_6_p53[k,])))
  colnames(UO31_6gy_6.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}





num.cells.UO31_8gy_7 <- nrow(UO31_8gy_7_x)
UO31_8gy_7.list <- vector(mode = "list", length = num.cells.UO31_8gy_7)

for(k in 1:num.cells.UO31_8gy_7){
  UO31_8gy_7.list[[k]] <- cbind.data.frame(type_UO31,t(rbind.data.frame(dose8,well7,time,
                                                                        UO31_8gy_7_x[k,],
                                                                        UO31_8gy_7_y[k,],
                                                                        UO31_8gy_7_p53[k,])))
  colnames(UO31_8gy_7.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}


num.cells.UO31_8gy_8 <- nrow(UO31_8gy_8_x)
UO31_8gy_8.list <- vector(mode = "list", length = num.cells.UO31_8gy_8)

for(k in 1:num.cells.UO31_8gy_8){
  UO31_8gy_8.list[[k]] <- cbind.data.frame(type_UO31,t(rbind.data.frame(dose8,well8,time,
                                                                        UO31_8gy_8_x[k,],
                                                                        UO31_8gy_8_y[k,],
                                                                        UO31_8gy_8_p53[k,])))
  colnames(UO31_8gy_8.list[[k]]) <- c("type","dose","well","time","xcoord","ycoord","p53")
}




















#### join into one giant list ####




cell_list <- c(a498_1gy_5.list,a498_1gy_6.list,a498_2gy_5.list,
               a498_2gy_6.list,a498_4gy_5.list,a498_4gy_6.list,a498_6gy_7.list,
               a498_6gy_10.list,a498_8gy_5.list,a498_8gy_6.list,a549_1gy_9.list,
               a549_1gy_10.list,a549_2gy_9.list,a549_2gy_10.list,a549_4gy_9.list,
               a549_4gy_10.list,a549_6gy_11.list,a549_6gy_12.list,a549_8gy_11.list,
               a549_8gy_12.list,h460_1gy_11.list,h460_1gy_12.list,h460_2gy_11.list,
               h460_2gy_12.list,h460_4gy_11.list,h460_4gy_12.list,h460_6gy_15.list,
               h460_6gy_16.list,h460_8gy_13.list,h460_8gy_14.list,HCT116_1gy_13.list,
               HCT116_2gy_13.list,HCT116_2gy_14.list,HCT116_4gy_13.list,HCT116_4gy_14.list,
               HCT116_6gy_13.list,HCT116_6gy_14.list,HCT116_8gy_15.list,HCT116_8gy_16.list,
               lox_imv_1gy_3.list,lox_imv_1gy_4.list,lox_imv_2gy_3.list,lox_imv_2gy_4.list,
               lox_imv_4gy_3.list,lox_imv_4gy_4.list,lox_imv_6gy_22.list,lox_imv_6gy_23.list,
               lox_imv_8gy_23.list,lox_imv_8gy_24.list,malme_1gy_14.list,malme_1gy_15.list,
               malme_2gy_15.list,malme_2gy_16.list,malme_4gy_15.list,malme_4gy_16.list,
               malme_6gy_17.list,malme_6gy_18.list,malme_8gy_17.list,malme_8gy_18.list,
               MCF7_1gy_16.list,MCF7_1gy_17.list,MCF7_2gy_17.list,MCF7_2gy_18.list,
               MCF7_4gy_17.list,MCF7_4gy_18.list,MCF7_6gy_1.list,MCF7_6gy_2.list,MCF7_8gy_1.list,
               MCF7_8gy_2.list,sk_mel5_1gy_18.list,sk_mel5_1gy_19.list,sk_mel5_1gy_20.list,
               sk_mel5_1gy_21.list,sk_mel5_2gy_22.list,sk_mel5_2gy_23.list,sk_mel5_4gy_19.list,
               sk_mel5_4gy_20.list,sk_mel5_4gy_21.list,sk_mel5_4gy_22.list,sk_mel5_4gy_23.list,
               sk_mel5_6gy_19.list,sk_mel5_6gy_20.list,sk_mel5_6gy_21.list,sk_mel5_8gy_19.list,
               sk_mel5_8gy_20.list,u2os_1gy_1.list,u2os_1gy_2.list,u2os_2gy_1.list,
               u2os_2gy_2.list,u2os_4gy_1.list,u2os_4gy_2.list,u2os_6gy_24.list,u2os_6gy_25.list,
               u2os_8gy_21.list,u2os_8gy_22.list,UACC257_1gy_22.list,UACC257_1gy_23.list,
               UACC257_2gy_24.list,UACC257_2gy_25.list,UACC257_4gy_24.list,UACC257_4gy_25.list,
               UACC257_6gy_3.list,UACC257_6gy_4.list,UACC257_8gy_3.list,UACC257_8gy_4.list,
               uacc62_1gy_7.list,uacc62_1gy_8.list,uacc62_2gy_7.list,uacc62_2gy_8.list,
               uacc62_4gy_7.list,uacc62_4gy_8.list,uacc62_6gy_8.list,uacc62_6gy_9.list,
               uacc62_8gy_9.list,uacc62_8gy_10.list,UO31_1gy_24.list,UO31_1gy_25.list,
               UO31_2gy_26.list,UO31_2gy_27.list,UO31_4gy_26.list,UO31_4gy_27.list,
               UO31_6gy_5.list,UO31_6gy_6.list,UO31_8gy_7.list,UO31_8gy_8.list)

#### remove missing ####

for(k in 1:length(cell_list)){
  
  cell_list[[k]]$dose <- as.numeric(cell_list[[k]]$dose)
  cell_list[[k]]$well <- as.numeric(cell_list[[k]]$well)
  cell_list[[k]]$time <- as.numeric(cell_list[[k]]$time)
  cell_list[[k]]$xcoord <- as.numeric(cell_list[[k]]$xcoord)
  cell_list[[k]]$ycoord <- as.numeric(cell_list[[k]]$ycoord)
  cell_list[[k]]$p53 <- as.numeric(cell_list[[k]]$p53)
  
}


num.cells <- length(cell_list)

missing <- rep(NA,num.cells)

for(k in 1:num.cells){
  missing[k] <- sum(complete.cases(cell_list[[k]]))==num.times
}

sum(missing)

remove <- which(missing==FALSE)

cell_list[remove] <- NULL

num.cells <- length(cell_list)



#### calculate motion from (x,y) coords ####






for(k in 1:length(cell_list)){
  cell_list[[k]]$stepdist <- rep(0,num.times)
  cell_list[[k]]$cumdist <-  rep(0,num.times)
}

magnify <- 0.645

for(k in 1:length(cell_list)){
  for(l in 2:num.times){
    cell_list[[k]]$stepdist[l] <- magnify*sqrt((cell_list[[k]]$xcoord[l]-cell_list[[k]]$xcoord[l-1])^2+(cell_list[[k]]$ycoord[l]-cell_list[[k]]$ycoord[l-1])^2)
  }
}


for(k in 1:length(cell_list)){
  for(l in 2:num.times){
    cell_list[[k]]$cumdist[l] <- cell_list[[k]]$cumdist[l-1]+cell_list[[k]]$stepdist[l]
  }
}


for(k in 1:length(cell_list)){
  cell_list[[k]]$stepangle <- rep(0,num.times)
}


for(k in 1:length(cell_list)){
  for(l in 2:num.times){
    
    diffx <- cell_list[[k]]$xcoord[l]-cell_list[[k]]$xcoord[l-1]
    
    diffy <- cell_list[[k]]$ycoord[l]-cell_list[[k]]$ycoord[l-1]
    
    alpha <- atan(abs(diffy)/abs(diffx))
    
    if(diffx>0 & diffy>0){
      cell_list[[k]]$stepangle[l] <- alpha
    }
    else if(diffx<0 & diffy>0){
      cell_list[[k]]$stepangle[l] <- pi-alpha
    }
    else if(diffx<0 & diffy<0){
      cell_list[[k]]$stepangle[l] <- pi+alpha
    }
    else if(diffx>0 & diffy<0){
      cell_list[[k]]$stepangle[l] <- 2*pi-alpha
    }
    else if(diffx>0 & diffy==0){
      cell_list[[k]]$stepangle[l] <- 0
    }
    else if(diffx==0 & diffy>0){
      cell_list[[k]]$stepangle[l] <- pi/2
    }
    else if(diffx<0 & diffy==0){
      cell_list[[k]]$stepangle[l] <- pi
    }
    else if(diffx==0 & diffy<0){
      cell_list[[k]]$stepangle[l] <- 3*pi/2
    }
    else if(diffx==0 & diffy==0){
      cell_list[[k]]$stepangle[l] <- NA
    }
    
  }
}

for(k in 1:num.cells){
  cell_list[[k]] <- cell_list[[k]] %>% mutate(cumspeed=cumdist/time)
}






startx <- rep(NA,num.cells)
for(k in 1:num.cells){
  startx[k] <- cell_list[[k]]$xcoord[1]
}

endx <- rep(NA,num.cells)
for(k in 1:num.cells){
  endx[k] <- cell_list[[k]]$xcoord[num.times]
}

starty <- rep(NA,num.cells)
for(k in 1:num.cells){
  starty[k] <- cell_list[[k]]$ycoord[1]
}

endy <- rep(NA,num.cells)
for(k in 1:num.cells){
  endy[k] <- cell_list[[k]]$ycoord[num.times]
}



totaldist <- rep(NA,num.cells)

for(k in 1:num.cells){
  totaldist[k] <- cell_list[[k]]$cumdist[num.times]
}




cell_summary <- cbind.data.frame(startx,endx,starty,endy,totaldist)

cell_summary <- cell_summary %>% mutate(diffx=magnify*(endx-startx))

cell_summary <- cell_summary %>% mutate(diffy=magnify*(endy-starty))



bigstep <- rep(NA,length(cell_list))

for(k in 1:length(cell_list)){
  bigstep[k] <- max(cell_list[[k]]$stepdist)
}

cell_summary <- cbind.data.frame(cell_summary,bigstep)



angle <- rep(NA,num.cells)
for(k in 1:num.cells){
  alpha <- atan(abs(cell_summary$diffy[k])/abs(cell_summary$diffx[k]))
  if(cell_summary$diffx[k]>0 & cell_summary$diffy[k]>0){
    angle[k] <- alpha
  }
  else if(cell_summary$diffx[k]<0 & cell_summary$diffy[k]>0){
    angle[k] <- pi-alpha
  }
  else if(cell_summary$diffx[k]<0 & cell_summary$diffy[k]<0){
    angle[k] <- pi+alpha
  }
  else if(cell_summary$diffx[k]>0 & cell_summary$diffy[k]<0){
    angle[k] <- 2*pi-alpha
  }
  else if(cell_summary$diffx[k]>0 & cell_summary$diffy[k]==0){
    angle[k] <- 0
  }
  else if(cell_summary$diffx[k]==0 & cell_summary$diffy[k]>0){
    angle[k] <- pi/2
  }
  else if(cell_summary$diffx[k]<0 & cell_summary$diffy[k]==0){
    angle[k] <- pi
  }
  else if(cell_summary$diffx[k]==0 & cell_summary$diffy[k]<0){
    angle[k] <- 3*pi/2
  }
  else if(cell_summary$diffx[k]==0 & cell_summary$diffy[k]==0){
    angle[k] <- NA
  }
}

cell_summary <- cbind.data.frame(cell_summary,angle)

cell_summary <- cell_summary %>% mutate(speed=totaldist/time[num.times]) 


cell <- 1:num.cells

type <- rep(NA,num.cells)
for(k in 1:num.cells){
  type[k] <- as.character(cell_list[[k]]$type[1])
}

dose <- rep(NA,num.cells)
for(k in 1:num.cells){
  dose[k] <- cell_list[[k]]$dose[1]
}

well <- rep(NA,num.cells)
for(k in 1:num.cells){
  well[k] <- cell_list[[k]]$well[1]
}

cell_summary <- cbind.data.frame(cell,type,dose,well,cell_summary)



for(k in 1:num.cells){
  x <- cell_list[[k]]$xcoord[1]
  y <- cell_list[[k]]$ycoord[1]
  cell_list[[k]] <- cell_list[[k]] %>% mutate(displace=magnify*sqrt((x-xcoord)^2+(y-ycoord)^2))
}

maxdisplace <- rep(NA,length(cell_list))


for(k in 1:length(cell_list)){
  maxdisplace[k] <- max(cell_list[[k]]$displace)
}

cell_summary <- cbind(cell_summary,maxdisplace)

cell_summary <- cell_summary %>% mutate(totaldisplacement=magnify*sqrt((startx-endx)^2+(starty-endy)^2))

last.time <- time[num.times]

cell_summary <- cell_summary %>% mutate(dispbytime=totaldisplacement/last.time)


stepiqr <- rep(NA,length(cell_list))


for(k in 1:length(cell_list)){
  stepiqr[k] <- IQR(cell_list[[k]]$stepdist)
}

cell_summary <- cbind(cell_summary,stepiqr)


stepsd <- rep(NA,length(cell_list))


for(k in 1:length(cell_list)){
  stepsd[k] <- sd(cell_list[[k]]$stepdist)
}

cell_summary <- cbind(cell_summary,stepsd)


cell_summary <- mutate(cell_summary,bigstepprop=bigstep/totaldist)



p53integrated <- rep(NA,length(cell_list))


for(k in 1:length(cell_list)){
  p53integrated[k] <- sum(cell_list[[k]]$p53)
}

cell_summary <- cbind.data.frame(cell_summary,p53integrated)

length(unique(cell_summary$p53integrated))






for(k in 1:length(cell_list)){
  cell_list[[k]]$div <- rep(0,num.times)
}



cell_summary <- mutate(cell_summary,stepmean=totaldist/num.times)

cell_summary <- mutate(cell_summary,stepcv=stepsd/stepmean)




















#### remove duplicates ####

size <- nrow(cell_summary)

testmat <- matrix(NA,size,size)

for(i in 1:size){
  for(j in 1:i){
    testmat[i,j] <- cell_list[[i]]$p53[num.times]==cell_list[[j]]$p53[num.times] & 
      cell_summary$endx[i]==cell_summary$endx[j]
  }
}

for(k in 1:size){
  testmat[k,k] <- 0
}

testmat[1:10,1:10]
sum(testmat,na.rm = TRUE)

problem <- which(testmat==1,arr.ind = TRUE)
unique(problem[,2])
length(unique(problem[,2]))
num.cells-length(unique(problem[,2]))


replicas <- unique(problem[,2])


cell_list <- cell_list[-replicas]
cell_summary <- cell_summary[-replicas,]


num.cells <- length(cell_list)


errors <- which(cell_summary$bigstep>100)

cell_list <- cell_list[-errors]
cell_summary <- cell_summary[-errors,]








size <- nrow(cell_summary)

testmat <- matrix(NA,size,size)

for(i in 1:size){
  for(j in 1:i){
    testmat[i,j] <- cell_summary$startx[i]==cell_summary$startx[j] & 
      cell_summary$starty[i]==cell_summary$starty[j]
  }
}

for(k in 1:size){
  testmat[k,k] <- 0
}

testmat[1:10,1:10]
sum(testmat,na.rm = TRUE)

problem <- which(testmat==1,arr.ind = TRUE)
unique(problem[,2])
length(unique(problem[,2]))
num.cells-length(unique(problem[,2]))


replicas <- unique(problem[,2])


for(k in 1:nrow(problem)){
  indexa <- problem[k,1]
  indexb <- problem[k,2]
  for(l in 1:num.times){
    
    birth <- max(which(cell_list[[indexa]]$cumspeed==cell_list[[indexb]]$cumspeed))
    cell_list[[indexa]]$div[birth] <- 1
  }
}



division <- rep(NA,length(cell_list))


for(k in 1:length(cell_list)){
  division[k] <- sum(cell_list[[k]]$div)
}

cell_summary <- cbind.data.frame(cell_summary,division)


#### PEARSON CORRELATION COEFFICIENTS AND P-VALUES ####


speeda498 <- filter(cell_summary,dose==1&type=="a498")
sa498 <- mean(speeda498$speed)
speeda549 <- filter(cell_summary,dose==1&type=="a549")
sa549 <- mean(speeda549$speed)
speedh460 <- filter(cell_summary,dose==1&type=="h460")
sh460 <- mean(speedh460$speed)
speedHCT116 <- filter(cell_summary,dose==1&type=="HCT116")
sHCT116 <- mean(speedHCT116$speed)
speedloximv <- filter(cell_summary,dose==1&type=="lox-imv")
sloximv <- mean(speedloximv$speed)
speedmalme <- filter(cell_summary,dose==1&type=="malme")
smalme <- mean(speedmalme$speed)
speedMCF7 <- filter(cell_summary,dose==1&type=="MCF7")
sMCF7 <- mean(speedMCF7$speed)
speedskmel5 <- filter(cell_summary,dose==1&type=="sk-mel5")
sskmel5 <- mean(speedskmel5$speed)
speedu2os <- filter(cell_summary,dose==1&type=="u2os")
su2os <- mean(speedu2os$speed)
speedUACC257 <- filter(cell_summary,dose==1&type=="UACC257")
sUACC257 <- mean(speedUACC257$speed)
speeduacc62 <- filter(cell_summary,dose==1&type=="uacc62")
suacc62 <- mean(speeduacc62$speed)
speedUO31 <- filter(cell_summary,dose==1&type=="UO31")
sUO31 <- mean(speedUO31$speed)




data_list <- list()
cell_types <- c("a498", "a549", "h460", "HCT116", "lox-imv", "malme", 
                "MCF7", "sk-mel5", "u2os", "UACC257", "uacc62", "UO31")
for (j in 1:length(cell_types)){
  data_list[[j]] <- filter(cell_summary,type==cell_types[j],speed<40)
}


# Initialize an empty vector to store p-values
p_values <- numeric(length(data_list))
correlations <- numeric(length(data_list))
# Loop over each dataset (c2 to c12)
for (i in 1:length(data_list)) {
  # Perform correlation test between 'speed' and 'dose' in each dataset
  cor_test <- cor.test(data_list[[i]]$speed, data_list[[i]]$dose, method = "pearson")
  
  # Store the p-value
  correlations[i] <- cor_test$estimate
  p_values[i] <- cor_test$p.value
  cat(cell_types[i], ": Correlation =",  sprintf("%.2f", correlations[i]), 
      ", P-value =", sprintf("%0.2e",p_values[i]), "\n")
}


# Initialize an empty vector to store p-values
Rsq <- numeric(length(data_list))
slopes <- numeric(length(data_list))
# Loop over each dataset (c2 to c12)
for (i in 1:length(data_list)) {
  # Perform correlation test between 'speed' and 'dose' in each dataset
  model <- lm(data_list[[i]]$speed ~ data_list[[i]]$dose)
  Rsq_val <- summary(model)$r.squared
  
  # # Store the Rsq
  Rsq[i] <- Rsq_val
  cat(cell_types[i], ": Rsq =",  sprintf("%.5f", Rsq_val), "\n")
}


#### FIGURE DOSE-SPEED CORRELAITON AND LINEAR REGRESSION ####


cell_summary_plot <- filter(cell_summary,speed<40)
type_order = c( "UO31", "a549" ,"lox-imv", "u2os"  ,
                "sk-mel5" ,  "a498" ,   "MCF7"  , "HCT116" , 
                "malme" , "uacc62" , "h460"  , "UACC257")
type_labels = c( "UO31"="UO31", "a549"="A549","lox-imv"="LOX-IMV", "u2os"="U2OS",
                 "sk-mel5"="SK-MEL5",  "a498"="A498",   "MCF7"="MCF7", "HCT116"="HCT116", 
                 "malme"="MALME-3E", "uacc62"="UACC62", "h460"="H460", "UACC257"="UACC257")



###///
type_order = c( "UO31", "a549" ,"lox-imv", "u2os"  ,
                "sk-mel5" ,  "a498" ,   "MCF7"  , "HCT116" , 
                "malme" , "uacc62" , "h460"  , "UACC257")
type_labels = c( "UO31"="UO31", "a549"="A549","lox-imv"="LOX-IMV", "u2os"="U2OS",
                 "sk-mel5"="SK-MEL5",  "a498"="A498",   "MCF7"="MCF7", "HCT116"="HCT116", 
                 "malme"="MALME-3E", "uacc62"="UACC62", "h460"="H460", "UACC257"="UACC257")
cell_summary_plot$type <- factor(cell_summary_plot$type, levels = type_order)

###///

source('custom_plot_theme.R')
#cell_summary_plot$type <- factor(cell_summary_plot$type, levels = type_order)
ggplot(cell_summary_plot,aes(dose,speed))+
  geom_jitter(alpha=0.2)+
  geom_boxplot(alpha=0.3,outlier.shape=NA,aes(group=as.factor(dose)))+
  geom_smooth(method="lm",se=TRUE)+
  #ggtitle("Speed by Type and Dose")+
  xlab("Dose (Gy)")+
  ylab("Average Speed (microns/hour)")+
  facet_wrap(~type,labeller=as_labeller(type_labels),scales='free')+
  stat_cor(method = "pearson", cor.coef.name = c("r", "p"),size=5)+
  scale_x_discrete(name ="Dose (Gy)", 
                   limits=c("1","2","","4","","6","","8"))+
  theme(axis.ticks.x = element_blank()) 
ggsave(
  filename = "manuscript_figures/avg_dose_speed.png", # file name and extension
  width = 12,                # width in inches
  height = 9,               # height in inches
  dpi = 300                 # resolution in dots per inch
)



### FIGURE: MEDIAN CUMULATIVE DISTANCE OVER TIME BY DOSE AND TYPE ####

characters <- c("a498","a549","h460","HCT116","lox-imv","malme","MCF7","sk-mel5","u2os","UACC257",
                "uacc62","UO31")
characters = type_order###///

f_cumdist <- function(x){
  char <- characters[x]
  f_cell_summary <- filter(cell_summary,type==char)
  dose1index <- which(f_cell_summary$dose==1)
  dose2index <- which(f_cell_summary$dose==2)
  dose4index <- which(f_cell_summary$dose==4)
  dose6index <- which(f_cell_summary$dose==6)
  dose8index <- which(f_cell_summary$dose==8)
  num.doses <- 5
  indices <- which(cell_summary$type==char)
  f_cell_list <- cell_list[indices]
  dose1cumdist <- rep(NA,num.times)
  vals <- rep(NA,length(dose1index))
  for(l in 1:num.times){
    for(k in dose1index){
      vals[k] <- f_cell_list[[k]]$cumdist[l]
    }
    dose1cumdist[l] <- median(vals)
  }
  dose2cumdist <- rep(NA,num.times)
  vals <- rep(NA,length(dose2index)) 
  for(l in 1:num.times){
    for(k in dose2index){
      vals[k-(dose2index[1]-1)] <- f_cell_list[[k]]$cumdist[l]
    }
    dose2cumdist[l] <- median(vals)
  }
  dose4cumdist <- rep(NA,num.times)
  vals <- rep(NA,length(dose4index))
  for(l in 1:num.times){
    for(k in dose4index){
      vals[k-(dose4index[1]-1)] <- f_cell_list[[k]]$cumdist[l]
    }
    dose4cumdist[l] <- median(vals)
  }
  
  dose6cumdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose6index))
  
  
  for(l in 1:num.times){
    for(k in dose6index){  
      vals[k-(dose6index[1]-1)] <- f_cell_list[[k]]$cumdist[l]
    }
    
    dose6cumdist[l] <- median(vals)
    
  }
  
  dose8cumdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose8index))
  
  
  for(l in 1:num.times){
    for(k in dose8index){
      
      vals[k-(dose8index[1]-1)] <- f_cell_list[[k]]$cumdist[l]
      
      
    }
    
    dose8cumdist[l] <- median(vals)

  }
  medcumdist <- cbind.data.frame(dose1cumdist,dose2cumdist,dose4cumdist,
                                 dose6cumdist,dose8cumdist)
  times <- f_cell_list[[1]]$time
  medcumdist <-cbind.data.frame(times,medcumdist)
  ggplot(medcumdist,aes(times,dose1cumdist,col="1"))+
    geom_path()+
    geom_path(aes(times,dose2cumdist,col="2"))+
    geom_path(aes(times,dose4cumdist,col="4"))+
    geom_path(aes(times,dose6cumdist,col="6"))+
    geom_path(aes(times,dose8cumdist,col="8"))+
    ggtitle(paste("Median Cumulative Distance Over Time by Dose ",char,sep=""))+
    xlab("Time")+
    ylab("Median Cumulative Distance (microns)")
}

f_cumdist_wrapper <- function(x){
  char <- characters[x]
  f_cell_summary <- filter(cell_summary,type==char)
  dose1index <- which(f_cell_summary$dose==1)
  dose2index <- which(f_cell_summary$dose==2)
  dose4index <- which(f_cell_summary$dose==4)
  dose6index <- which(f_cell_summary$dose==6)
  dose8index <- which(f_cell_summary$dose==8)
  num.doses <- 5
  indices <- which(cell_summary$type==char)
  f_cell_list <- cell_list[indices]
  dose1cumdist <- rep(NA,num.times)
  vals <- rep(NA,length(dose1index))
  for(l in 1:num.times){
    for(k in dose1index){
      vals[k] <- f_cell_list[[k]]$cumdist[l]
    }
    dose1cumdist[l] <- median(vals)
  }
  dose2cumdist <- rep(NA,num.times)
  vals <- rep(NA,length(dose2index))
  for(l in 1:num.times){
    for(k in dose2index){
      vals[k-(dose2index[1]-1)] <- f_cell_list[[k]]$cumdist[l]
    }
    dose2cumdist[l] <- median(vals)
  }
  dose4cumdist <- rep(NA,num.times)
  vals <- rep(NA,length(dose4index))
  for(l in 1:num.times){
    for(k in dose4index){
      vals[k-(dose4index[1]-1)] <- f_cell_list[[k]]$cumdist[l]
    }
    dose4cumdist[l] <- median(vals)
  }
  dose6cumdist <- rep(NA,num.times)
  vals <- rep(NA,length(dose6index))
  for(l in 1:num.times){
    for(k in dose6index){
      vals[k-(dose6index[1]-1)] <- f_cell_list[[k]]$cumdist[l]
    }
    dose6cumdist[l] <- median(vals)
  }
  dose8cumdist <- rep(NA,num.times)
  vals <- rep(NA,length(dose8index))
  for(l in 1:num.times){
    for(k in dose8index){
      vals[k-(dose8index[1]-1)] <- f_cell_list[[k]]$cumdist[l]
    }
    dose8cumdist[l] <- median(vals)
  }
  medcumdist <- cbind.data.frame(dose1cumdist,dose2cumdist,dose4cumdist,
                                 dose6cumdist,dose8cumdist)
  charvec <- rep(char,num.times)
  times <- f_cell_list[[1]]$time
  medcumdist <-cbind.data.frame(charvec,times,medcumdist)
  return(medcumdist)
}

wrap1 <- f_cumdist_wrapper(1)
wrap2 <- f_cumdist_wrapper(2)
wrap3 <- f_cumdist_wrapper(3)
wrap4 <- f_cumdist_wrapper(4)
wrap5 <- f_cumdist_wrapper(5)
wrap6 <- f_cumdist_wrapper(6)
wrap7 <- f_cumdist_wrapper(7)
wrap8 <- f_cumdist_wrapper(8)
wrap9 <- f_cumdist_wrapper(9)
wrap10 <- f_cumdist_wrapper(10)
wrap11 <- f_cumdist_wrapper(11)
wrap12 <- f_cumdist_wrapper(12)
wrapped <- rbind.data.frame(wrap1,wrap2,wrap3,wrap4,wrap5,wrap6,wrap7,wrap8,wrap9,wrap10,wrap11,wrap12)

wrapped$charvec <- factor(wrapped$charvec, levels = characters)###///

ggplot(wrapped,aes(times,dose1cumdist,col="1"))+
  geom_path()+
  geom_path(aes(times,dose2cumdist,col="2"))+
  geom_path(aes(times,dose4cumdist,col="4"))+
  geom_path(aes(times,dose6cumdist,col="6"))+
  geom_path(aes(times,dose8cumdist,col="8"))+
  geom_hline(yintercept=400,linetype="dashed",color="red",size=1,alpha=0.7)+
  ggtitle("Median Cumulative Distance Over Time by Dose and Type")+
  xlab("Time (hours)")+
  ylab("Median Cumulative Distance (microns)")+
  facet_wrap(~charvec,scales="free", labeller=as_labeller(type_labels))+
  labs(col="Dose")+
  #scale_y_continuous(breaks = seq(0, 551, by = 100))+
  ylim(0,600)

ggsave(
  filename = "manuscript_figures/median_cum_dist_over_time_ylim_hline.png", # file name and extension
  width = 12,                # width in inches
  height = 9,               # height in inches
  dpi = 300                 # resolution in dots per inch
)











#### STEP DIST. CV OVER TIME BY DOSE  ####
# to assess homo/heteroscedasticity


f_stepdist_sced <- function(x){
  char <- characters[x]
  f_cell_summary <- filter(cell_summary,type==char)
  
  dose1index <- which(f_cell_summary$dose==1)
  dose2index <- which(f_cell_summary$dose==2)
  dose4index <- which(f_cell_summary$dose==4)
  dose6index <- which(f_cell_summary$dose==6)
  dose8index <- which(f_cell_summary$dose==8)
  
  num.doses <- 5
  
  indices <- which(cell_summary$type==char)
  f_cell_list <- cell_list[indices]
  
  
  
  dose1stepdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose1index))
  
  
  for(l in 1:num.times){
    for(k in dose1index){
      
      vals[k] <- f_cell_list[[k]]$stepdist[l]
      
      
    }
    
    dose1stepdist[l] <- sd(vals)/mean(vals)
    
  }
  
  
  dose2stepdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose2index))
  
  
  for(l in 1:num.times){
    for(k in dose2index){
      
      vals[k-(dose2index[1]-1)] <- f_cell_list[[k]]$stepdist[l]
      
      
    }
    
    dose2stepdist[l] <- sd(vals)/mean(vals)
    
  }
  
  
  dose4stepdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose4index))
  
  
  for(l in 1:num.times){
    for(k in dose4index){
      
      vals[k-(dose4index[1]-1)] <- f_cell_list[[k]]$stepdist[l]
      
      
    }
    
    dose4stepdist[l] <- sd(vals)/mean(vals)
    
  }
  
  dose6stepdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose6index))
  
  
  for(l in 1:num.times){
    for(k in dose6index){
      
      vals[k-(dose6index[1]-1)] <- f_cell_list[[k]]$stepdist[l]
      
      
    }
    
    dose6stepdist[l] <- sd(vals)/mean(vals)
    
  }
  
  dose8stepdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose8index))
  
  
  for(l in 1:num.times){
    for(k in dose8index){
      
      vals[k-(dose8index[1]-1)] <- f_cell_list[[k]]$stepdist[l]
      
      
    }
    
    dose8stepdist[l] <- sd(vals)/mean(vals)
    
  }
  
  
  avstepdist <- cbind.data.frame(dose1stepdist,dose2stepdist,dose4stepdist,
                                 dose6stepdist,dose8stepdist)
  
  times <- f_cell_list[[1]]$time
  
  avstepdist <-cbind.data.frame(times,avstepdist)
  
  ggplot(avstepdist,aes(times,dose1stepdist,col="1"))+
    geom_path()+
    geom_path(aes(times,dose2stepdist,col="2"))+
    geom_path(aes(times,dose4stepdist,col="4"))+
    geom_path(aes(times,dose6stepdist,col="6"))+
    geom_path(aes(times,dose8stepdist,col="8"))+
    ggtitle(paste("Step Distance CV Over Time by Dose ",char,sep=""))+
    xlab("Time")+
    ylab("Mean Step Coefficient of Variation")
  
  
  
}

f_stepdist_sced_wrapper <- function(x){
  char <- characters[x]
  f_cell_summary <- filter(cell_summary,type==char)
  
  dose1index <- which(f_cell_summary$dose==1)
  dose2index <- which(f_cell_summary$dose==2)
  dose4index <- which(f_cell_summary$dose==4)
  dose6index <- which(f_cell_summary$dose==6)
  dose8index <- which(f_cell_summary$dose==8)
  
  num.doses <- 5
  
  indices <- which(cell_summary$type==char)
  f_cell_list <- cell_list[indices]
  

  dose1stepdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose1index))
  
  
  for(l in 1:num.times){
    for(k in dose1index){
      
      vals[k] <- f_cell_list[[k]]$stepdist[l]
      
      
    }
    
    dose1stepdist[l] <- sd(vals)/mean(vals)
    
  }
  
  
  dose2stepdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose2index))
  
  
  for(l in 1:num.times){
    for(k in dose2index){
      
      vals[k-(dose2index[1]-1)] <- f_cell_list[[k]]$stepdist[l]
      
      
    }
    
    dose2stepdist[l] <- sd(vals)/mean(vals)
    
  }
  
  
  dose4stepdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose4index))
  
  
  for(l in 1:num.times){
    for(k in dose4index){
      
      vals[k-(dose4index[1]-1)] <- f_cell_list[[k]]$stepdist[l]
      
      
    }
    
    dose4stepdist[l] <- sd(vals)/mean(vals)
    
  }
  
  dose6stepdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose6index))
  
  
  for(l in 1:num.times){
    for(k in dose6index){
      
      vals[k-(dose6index[1]-1)] <- f_cell_list[[k]]$stepdist[l]
      
      
    }
    
    dose6stepdist[l] <- sd(vals)/mean(vals)
    
  }
  
  dose8stepdist <- rep(NA,num.times)
  
  vals <- rep(NA,length(dose8index))
  
  
  for(l in 1:num.times){
    for(k in dose8index){
      
      vals[k-(dose8index[1]-1)] <- f_cell_list[[k]]$stepdist[l]
      
      
    }
    
    dose8stepdist[l] <- sd(vals)/mean(vals)
    
  }
  
  
  avstepdist <- cbind.data.frame(dose1stepdist,dose2stepdist,dose4stepdist,
                                 dose6stepdist,dose8stepdist)
  
  charvec <- rep(char,num.times)
  
  times <- f_cell_list[[1]]$time
  
  avstepdist <-cbind.data.frame(charvec,times,avstepdist)
  
  
  
}

wrap1 <- f_stepdist_sced_wrapper(1)
wrap2 <- f_stepdist_sced_wrapper(2)
wrap3 <- f_stepdist_sced_wrapper(3)
wrap4 <- f_stepdist_sced_wrapper(4)
wrap5 <- f_stepdist_sced_wrapper(5)
wrap6 <- f_stepdist_sced_wrapper(6)
wrap7 <- f_stepdist_sced_wrapper(7)
wrap8 <- f_stepdist_sced_wrapper(8)
wrap9 <- f_stepdist_sced_wrapper(9)
wrap10 <- f_stepdist_sced_wrapper(10)
wrap11 <- f_stepdist_sced_wrapper(11)
wrap12 <- f_stepdist_sced_wrapper(12)


wrapped <- rbind.data.frame(wrap1,wrap2,wrap3,wrap4,wrap5,wrap6,wrap7,wrap8,wrap9,wrap10,wrap11,wrap12)






wrapped$charvec <- factor(wrapped$charvec, levels = characters)###///

ggplot(wrapped,aes(times,dose1stepdist,col="1"))+
  geom_path()+
  geom_path(aes(times,dose2stepdist,col="2"))+
  geom_path(aes(times,dose4stepdist,col="4"))+
  geom_path(aes(times,dose6stepdist,col="6"))+
  geom_path(aes(times,dose8stepdist,col="8"))+
  ggtitle("Step Distance CV Over Time by Dose and Type")+
  ylim(c(0,6.5))+
  xlab("Time (hours)")+
  ylab("Step Distance Coefficient of Variation")+
  facet_wrap(~charvec,labeller=as_labeller(type_labels),scales='free')+
  labs(col="Dose (Gy)")
ggsave(
   filename = "manuscript_figures/step_dist_cv_over_time_ylim.png", # file name and extension
   width = 12,                # width in inches
   height = 9,               # height in inches
   dpi = 300                 # resolution in dots per inch
 )


# ggplot(wrapped,aes(times,dose1stepdist,col="1"))+
#   geom_smooth()+
#   geom_smooth(aes(times,dose2stepdist,col="2"))+
#   geom_smooth(aes(times,dose4stepdist,col="4"))+
#   geom_smooth(aes(times,dose6stepdist,col="6"))+
#   geom_smooth(aes(times,dose8stepdist,col="8"))+
#   ggtitle("Step Distance CV Over Time by Dose and Type")+
#   xlab("Time (hours)")+
#   ylab("Step Distance Coefficient of Variation")+
#   facet_wrap(~charvec,labeller=as_labeller(type_labels),scales='free')+
#   labs(col="Dose (Gy)")+
#   xlim(c(1,25))

ggplot(wrapped)+
  geom_smooth(aes(times,dose1stepdist,col="1"))+
  geom_smooth(aes(times,dose2stepdist,col="2"))+
  geom_smooth(aes(times,dose4stepdist,col="4"))+
  geom_smooth(aes(times,dose6stepdist,col="6"))+
  geom_smooth(aes(times,dose8stepdist,col="8"))+
  ggtitle("Step Distance CV Over Time by Dose and Type")+
  xlab("Time (hours)")+
  ylab("Step Distance Coefficient of Variation")+
  facet_wrap(~charvec,labeller=as_labeller(type_labels),scales='free')+
  labs(col="Dose (Gy)")+
  xlim(c(1,25))

# ggsave(
#   filename = "manuscript_figures/step_dist_cv_smoothed_over_time.png", # file name and extension
#   width = 12,                # width in inches
#   height = 9,               # height in inches
#   dpi = 300                 # resolution in dots per inch
# )


#### TOP SPEED BY DOSE ####
f_topspeed <- function(x,n){
  top <- n
  char <- characters[x]
  f_cell_summary <- filter(cell_summary,type==char,speed<40)
  
  dose1 <- filter(f_cell_summary,dose==1)
  dose2 <- filter(f_cell_summary,dose==2)
  dose4 <- filter(f_cell_summary,dose==4)
  dose6 <- filter(f_cell_summary,dose==6)
  dose8 <- filter(f_cell_summary,dose==8)
  
  topdose1 <- sort(dose1$speed,decreasing=TRUE)[1:top]
  topdose2 <- sort(dose2$speed,decreasing=TRUE)[1:top]
  topdose4 <- sort(dose4$speed,decreasing=TRUE)[1:top]
  topdose6 <- sort(dose6$speed,decreasing=TRUE)[1:top]
  topdose8 <- sort(dose8$speed,decreasing=TRUE)[1:top]
  
  fastguys <- c(topdose1,topdose2,topdose4,topdose6,topdose8)
  
  doses <- c(rep(1,top),rep(2,top),rep(4,top),rep(6,top),rep(8,top))
  
  fastdf <- cbind.data.frame(fastguys,doses)
  
  ggplot(fastdf,aes(doses,fastguys))+
    geom_point(alpha=0.4)+
    ggtitle(paste("Top Speeds by Dose ",char,sep=""))+
    xlab("Dose (Gy)")+
    ylab("Speed (microns/hour)")
}  


f_topspeed_wrapper <- function(x,n=10){
  top <- n
  char <- characters[x]
  f_cell_summary <- filter(cell_summary,type==char)
  
  dose1 <- filter(f_cell_summary,dose==1)
  dose2 <- filter(f_cell_summary,dose==2)
  dose4 <- filter(f_cell_summary,dose==4)
  dose6 <- filter(f_cell_summary,dose==6)
  dose8 <- filter(f_cell_summary,dose==8)
  
  topdose1 <- sort(dose1$speed,decreasing=TRUE)[1:top]
  topdose2 <- sort(dose2$speed,decreasing=TRUE)[1:top]
  topdose4 <- sort(dose4$speed,decreasing=TRUE)[1:top]
  topdose6 <- sort(dose6$speed,decreasing=TRUE)[1:top]
  topdose8 <- sort(dose8$speed,decreasing=TRUE)[1:top]
  
  charvec <- rep(char,n*5)
  
  
  fastguys <- c(topdose1,topdose2,topdose4,topdose6,topdose8)
  
  doses <- c(rep(1,top),rep(2,top),rep(4,top),rep(6,top),rep(8,top))
  
  fastdf <- cbind.data.frame(charvec,fastguys,doses)
  
  return(fastdf)
  
}  

wrap1 <- f_topspeed_wrapper(1)
wrap2 <- f_topspeed_wrapper(2)
wrap3 <- f_topspeed_wrapper(3)
wrap4 <- f_topspeed_wrapper(4)
wrap5 <- f_topspeed_wrapper(5)
wrap6 <- f_topspeed_wrapper(6)
wrap7 <- f_topspeed_wrapper(7)
wrap8 <- f_topspeed_wrapper(8)
wrap9 <- f_topspeed_wrapper(9)
wrap10 <- f_topspeed_wrapper(10)
wrap11 <- f_topspeed_wrapper(11)
wrap12 <- f_topspeed_wrapper(12)

wrapped <- rbind.data.frame(wrap1,wrap2,wrap3,wrap4,wrap5,wrap6,wrap7,wrap8,wrap9,wrap10,wrap11,wrap12)
#wrapped <- rbind.data.frame(wrap2,wrap4,wrap5,wrap6,wrap7,wrap8,wrap9,wrap10,wrap11)



unique(wrapped$charvec)
wrapped$charvec <- factor(wrapped$charvec, levels = characters)###///
ggplot(wrapped,aes(doses,fastguys))+
  geom_point(alpha=0.4)+
  geom_smooth(method="lm")+
  stat_cor(aes(label = paste(..r.label..,..p.label.., sep = "~`,`~")),
    method='pearson',cor.coef.name = c('r'),
    size=5)+
  ggtitle("Top Speeds by Dose and Type")+
  xlab("Dose (Gy)")+
  ylab("Speed (microns/hour)")+
  facet_wrap(~charvec,scales='free',labeller = as_labeller(type_labels))+
  ylim(c(0,52))

ggsave(
  filename = "manuscript_figures/top_speeds_by_dose_n_10_pval.png", # file name and extension
  width = 12,                # width in inches
  height = 9,               # height in inches
  dpi = 300                 # resolution in dots per inch
)


#### LARGEST STEP BY DOSE ####


# ggplot(cell_summary,aes(bigstep,col=as.factor(dose)))+
#   geom_density()+
#   ggtitle("Largest Step by Dose")+
#   xlab("Largest Step (microns)")+
#   ylab("Density")+
#   facet_wrap(~type)
# 
# ggplot(cell_summary,aes(bigstep,col=as.factor(dose)))+
#   geom_density()+
#   ggtitle("Largest Step by Dose")+
#   xlab("Largest Step (microns)")+
#   ylab("Density")+
#   facet_wrap(~type,scales="free")
# 
# ggplot(cell_summary,aes(bigstep,col=as.factor(dose)))+
#   geom_density()+
#   ggtitle("Largest Step by Dose")+
#   xlab("Largest Step (microns)")+
#   ylab("Density")+
#   facet_wrap(~type)+
#   xlim(c(0,50))
# 
# ggplot(cell_summary,aes(as.factor(dose),bigstep))+
#   geom_boxplot()+
#   ggtitle("Largest Step by Dose and Type")+
#   ylab("Largest Step (microns)")+
#   xlab("Dose (Gy)")+
#   facet_wrap(~type)
# 
# ggplot(cell_summary,aes(as.factor(dose),bigstep))+
#   geom_boxplot()+
#   ggtitle("Largest Step by Dose and Type")+
#   ylab("Largest Step (microns)")+
#   xlab("Dose (Gy)")+
#   facet_wrap(~type,scales="free")
# 
# ggplot(cell_summary,aes(as.factor(dose),bigstep))+
#   geom_boxplot()+
#   ggtitle("Largest Step by Dose and Type")+
#   xlab("Largest Step (microns)")+
#   ylab("Density")+
#   facet_wrap(~type)+
#   ylim(c(0,50))
# 
# ggplot(cell_summary,aes(bigstepprop,col=as.factor(dose)))+
#   geom_density()+
#   ggtitle("Largest Step by Dose as Proportion of Total Distance")+
#   xlab("Largest Step as a Proportion")+
#   ylab("Density")+
#   facet_wrap(~type)

ggplot(cell_summary,aes(as.factor(dose),bigstepprop))+
  geom_boxplot(alpha = 0.5)+
  ggtitle("Largest Step by Dose as Proportion of Total Distance")+
  ylab("Largest Step as a Proportion")+
  xlab("Dose (Gy)")+
  facet_wrap(~type,scales='free',labeller = as_labeller(type_labels))+
  geom_hline(yintercept=0.1,linetype="dashed",color="red",size=1.5,alpha=0.7)+
  ylim(c(0,0.4))
ggsave(
   filename = "manuscript_figures/largest_step_over_time_hline.png", # file name and extension
   width = 12,                # width in inches
   height = 9,               # height in inches
   dpi = 300                 # resolution in dots per inch
 )



#### DISPLACEMENT VECTOR BY TYPE ####
cell_summary$type <- factor(cell_summary$type, levels = type_order)

ggplot(cell_summary,aes(diffx,diffy,col=as.factor(dose)))+
  geom_point(alpha=0.2)+
  ggtitle("Displacement Vectors by Dose and Type")+
  xlab("x Displacement (microns)")+
  ylab("y Displacement (microns)")+
  facet_wrap(~type,scales="free",labeller = as_labeller(type_labels))+
  xlim(c(-400,400)) + 
  ylim(c(-400,400))
# ggsave(
#   filename = "manuscript_figures/disp_vec_by_dose_and_type.png", # file name and extension
#   width = 12,                # width in inches
#   height = 9,               # height in inches
#   dpi = 300                 # resolution in dots per inch
# )

# ggplot(cell_summary,aes(diffx,diffy))+
#   geom_bin2d()+
#   ggtitle("Displacement Vectors by Type")+
#   xlab("x Displacement (microns)")+
#   ylab("y Displacement (microns)")+
#   facet_wrap(~type)


#ggplot(cell_summary,aes(diffx,diffy))+
#  geom_bin2d()+
#  ggtitle("Displacement Vectors by Type")+
#  xlab("x Displacement (microns)")+
#  ylab("y Displacement (microns)")+
#  facet_wrap(~type)+
#  scale_fill_continuous(type = "viridis") 


# ggplot(cell_summary,aes(diffx,diffy))+
#  geom_hex(bins=20)+
#  ggtitle("Displacement Vectors by Type")+
#  xlab("x Displacement (microns)")+
#  ylab("y Displacement (microns)")+
#  facet_wrap(~type)+
#  scale_fill_continuous(type = "viridis")


# ggplot(cell_summary,aes(diffx,diffy))+
#  stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="yellow")+
#  ggtitle("Displacement Vectors by Type")+
#  xlab("x Displacement (microns)")+
#  ylab("y Displacement (microns)")+
#  facet_wrap(~type+dose)


ggplot(cell_summary,aes(diffx,diffy))+
 stat_density_2d(aes(fill = ..level..), geom = "polygon", colour="yellow")+
 ggtitle("Displacement Vectors by Type")+
 xlab("x Displacement (microns)")+
 ylab("y Displacement (microns)")+
 facet_grid(type~dose)





ggplot(cell_summary,aes(angle))+
  geom_density(aes(col=as.factor(dose)))+
  ggtitle("Displacement Angle by Dose")+
  xlab("Displacement Angle (radians)")+
  ylab("Density")+
  facet_wrap(~type)+
  geom_hline(yintercept=1/(2*pi),linetype="dashed",color="red",size=2)









#### MISC. ####

ggplot(cell_summary,aes(y=as.factor(dose),x=speed,fill=factor(stat(quantile))))+
  stat_density_ridges(geom="density_ridges_gradient",calc_ecdf=TRUE,quantiles=4,quantile_lines=TRUE)+
  scale_fill_viridis_d(name="Quartiles")+
  facet_wrap(~type)+
  ggtitle("Speed by Type and Dose")+
  ylab("Dose (Gy)")+
  xlab("Speed (microns/hour)")

ggplot(cell_summary,aes(y=as.factor(dose),x=speed,fill=factor(stat(quantile))))+
  stat_density_ridges(geom="density_ridges_gradient",calc_ecdf=TRUE,quantiles=4,quantile_lines=TRUE)+
  scale_fill_viridis_d(name="Quartiles")+
  facet_wrap(~type, scales = "free")+
  ggtitle("Speed by Type and Dose")+
  ylab("Dose (Gy)")+
  xlab("Speed (microns/hour)")


#### number of divisions compared to motion ####
ggplot(cell_summary,aes(division,fill=as.factor(dose)))+
  geom_bar()+
  ggtitle("Number of Divisions by Dose and Type")+
  xlab("Number of Divisions")+
  ylab("Count")+
  facet_wrap(~type)



ggplot(cell_summary,aes(dose,totaldisplacement))+
  geom_jitter(alpha=0.3)+
  geom_boxplot(alpha=0.3,aes(group=as.factor(dose)))+
  geom_smooth(method="lm")+
  ggtitle("Displacement by Type and Dose")+
  xlab("Dose (Gy)")+
  ylab("Displacement (microns/hour)")+
  facet_wrap(~type)


plot_cumspeed <- function(k){ggplot(cell_list[[k]],aes(time,cumspeed))+
    geom_path()+
    ggtitle("Cumulative Speed Over Time")+
    xlab("Time")+
    ylab("Cumulative Speed (microns/hour)")
}
plot_cumspeed(2)

# c1 <- filter(cell_summary,type=="a498")
# cor(c1$speed,c1$dose)
# c2 <- filter(cell_summary,type=="a549")
# c2_test = cor.test(c3$speed, c3$dose, method = "pearson")
# c3 <- filter(cell_summary,type=="h460")
# c3_test = cor.test(c3$speed, c3$dose, method = "pearson")
# c4 <- filter(cell_summary,type=="HCT116")
# cor(c4$speed,c4$dose)
# c5 <- filter(cell_summary,type=="lox-imv")
# cor(c5$speed,c5$dose)
# c6 <- filter(cell_summary,type=="malme")
# cor(c6$speed,c6$dose)
# c7 <- filter(cell_summary,type=="MCF7")
# cor(c7$speed,c7$dose)
# c8 <- filter(cell_summary,type=="sk-mel5")
# cor(c8$speed,c8$dose)
# c9 <- filter(cell_summary,type=="u2os")
# cor(c9$speed,c9$dose)
# c10 <- filter(cell_summary,type=="UACC257")
# cor(c10$speed,c10$dose)
# c11 <- filter(cell_summary,type=="uacc62")
# cor(c11$speed,c11$dose)
# c12 <- filter(cell_summary,type=="UO31")
# cor(c12$speed,c12$dose)


