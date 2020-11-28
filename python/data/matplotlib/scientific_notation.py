# https://stackoverflow.com/questions/28371674/prevent-scientific-notation-in-matplotlib-pyplot
import matplotlib.pyplot as plt
plt.plot(range(2003,2012,1),range(200300,201200,100))
# several solutions from other questions have not worked, including
# plt.ticklabel_format(style='sci', axis='x', scilimits=(-1000000,1000000))
# ax.get_xaxis().get_major_formatter().set_useOffset(False)
plt.show()


fig, ax = plt.subplots()
ax.plot(range(2003,2012,1),range(200300,201200,100))
ax.ticklabel_format(useOffset=False)
plt.show()




# https://stackoverflow.com/questions/54165569/can-i-turn-of-scientific-notation-in-matplotlib-bar-chart
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import FuncFormatter

profit = pd.Series(np.random.randint(1e2, size=5))
ax = profit.plot(kind="bar")

def scientific(x, pos):
    # x:  tick value - ie. what you currently see in yticks
    # pos: a position - ie. the index of the tick (from 0 to 9 in this example)
    return '%.2E' % x

scientific_formatter = FuncFormatter(scientific)
ax.yaxis.set_major_formatter(scientific_formatter)
plt.show()