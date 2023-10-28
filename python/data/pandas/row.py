# https://stackoverflow.com/questions/16476924/how-to-iterate-over-rows-in-a-dataframe-in-pandas
import pandas as pd

df = pd.DataFrame({'c1': [10, 11, 12], 'c2': [100, 110, 120]})
print(df)
for index, row in df.iterrows():
    print(row['c1'], row['c2'])


# https://stackoverflow.com/questions/13784192/creating-an-empty-pandas-dataframe-and-then-filling-it
# NEVER grow a DataFrame row-wise!
# Accumulate data in a list, not a DataFrame.