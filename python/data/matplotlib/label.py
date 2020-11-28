# https://stackoverflow.com/questions/13515471/matplotlib-how-to-prevent-x-axis-labels-from-overlapping-each-other
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
# create a random dataframe with datetimeindex
date_range = pd.date_range('1/1/2011', '4/10/2011', freq='D')
df = pd.DataFrame(np.random.randint(0,10,size=(100, 1)), columns=['value'], index=date_range)

plt.plot(df.index,df['value'])
plt.show()

fig, ax = plt.subplots()
ax.plot(df.index,df['value'])
ax.xaxis_date()     # interpret the x-axis values as dates
fig.autofmt_xdate() # make space for and rotate the x-axis tick labels
plt.show()


# https://stackoverflow.com/questions/6390393/matplotlib-make-tick-labels-font-size-smaller
plt.xticks(fontsize=5, rotation=90)
plt.plot(df.index,df['value'])
plt.show()