#### Preamble ####
# Purpose: Converts and  saves the data
# Author: Zijun Meng
# Date: 27 March 2024
# Contact: zijun.meng@mail.utoronto.ca
# License: MIT
# Pre-requisites: Download food-allergy-analysis-Zenodo.csv from https://zenodo.org/records/44529, then put it in data/raw_data



#### Workspace setup ####
library(tidyverse)
library(arrow)

#### Convert and save data ####
raw_data <- read_csv("data/raw_data/food-allergy-analysis-Zenodo.csv")
write_parquet(x = raw_data,
              sink = "data/raw_data/allergy.parquet")

         
