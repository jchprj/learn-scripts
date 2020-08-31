import pandas as pd 
import numpy as np

data = { 
        'A':["333333331", "2", "3"],  
        'B':[4, 5, 6],  
        'C':[7, 8, 9] } 
df = pd.DataFrame(data) 
print("Original DataFrame:\n", df) 

# https://stackoverflow.com/questions/24644656/how-to-print-pandas-dataframe-without-index
print("Without index column:\n", df.to_string(index=False))

# https://www.geeksforgeeks.org/get-a-list-of-a-particular-column-values-of-a-pandas-dataframe/?ref=rp
list_c = df['C'].tolist()
print("List of column C:\n", list_c)

# https://www.geeksforgeeks.org/get-n-largest-values-from-a-particular-column-in-pandas-dataframe/?ref=rp
df_2 = df.nlargest(2, ['B'])
print("Get n-largest values from a particular column\n", df_2)