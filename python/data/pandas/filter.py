# https://cmdlinetips.com/2018/02/how-to-subset-pandas-dataframe-based-on-values-of-a-column/

import pandas as pd 
import numpy as np

data = { 
        'A':["333333331", "2", "3"],  
        'B':[4, 5, 6],  
        'C':[7, 8, 9] } 
df = pd.DataFrame(data) 
print("Original DataFrame:\n", df) 



df_filtered = df[df.A.eq("2")]
print("Filtered DataFrame:\n", df_filtered) 

df_filtered = df[df.A.isin(["2"])]
print("Filtered DataFrame:\n", df_filtered) 

cell_filtered = df[df.A.isin(["2"])].B
print("Filtered cell:\n", cell_filtered) 

value_filtered = df[df.A.isin(["2"])].B.values[0]
print("Filtered value:\n", value_filtered) 



df_filtered = df[df.A.isin(["2", "3"])]
print("Filtered by multiple values DataFrame:\n", df_filtered) 

df_filtered = df[df.A.isin(["2"]) | ~df.B.isin(["6"])]
print("Filtered by multiple conditions DataFrame:\n", df_filtered) 

