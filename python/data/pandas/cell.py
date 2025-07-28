# https://stackoverflow.com/questions/16729574/how-to-get-a-value-from-a-cell-of-a-dataframe
import pandas as pd, numpy

df = pd.DataFrame(numpy.random.randn(5,3),columns=list('ABC'))

print(df)

print(df.iat[0,0])
print(df.at[0,'A'])
print(df.iloc[-1]['A'])
print(df.iloc[1]['A'])
print(df.at[df.index[-1],'A'])
print(df['A'].values[0])

# Most answers are using iloc which is good for selection by position.
# If you need selection-by-label loc would be more convenient.
# print(df.loc['a', 'A'])


# https://stackoverflow.com/questions/13842088/set-value-for-particular-cell-in-pandas-dataframe-using-index
df.at['C', 'x'] = 10
print(df)
