# https://www.geeksforgeeks.org/pandas-parsing-json-dataset/
import pandas as pd 
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
df = pd.json_normalize(j) 
print(df)
#    a  b
# 0  1  2
# 1  3  4