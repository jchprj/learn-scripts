# https://www.geeksforgeeks.org/pandas-parsing-json-dataset/
import pandas as pd 
from pandas.io.json import json_normalize  
j = [
        {
          "a": 1,
          "b": 2
        },
        {
          "a": 3,
          "b": 4
        }
    ]
df = json_normalize(j) 
print(df)
#    a  b
# 0  1  2
# 1  3  4