# https://stackoverflow.com/questions/26255671/pandas-column-values-to-columns
import pandas as pd 

data = { 
        'A':["x", "x", "y"],  
        'B':[1, 5, 6],  
        'C':[2, 8, 9] } 
df = pd.DataFrame(data) 
print(df)
df1 = df.pivot_table(values='C', index=df.index, columns='A', aggfunc='first')
print(df1)
df2 = df.pivot(index=df.index, columns='A')['C']
print(df2)
df3 = df.reset_index().groupby(['A', 'B'])['C'].aggregate('first').unstack()
print(df3)

# https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.concat.html
df1 = pd.DataFrame([['a', 1], ['b', 2]], columns=['letter', 'number'])
df2 = pd.DataFrame([['c', 3], ['d', 4]], columns=['letter', 'number'])
df3 = pd.concat([df1, df2])
print(df3)