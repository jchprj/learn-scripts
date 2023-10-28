# https://stackoverflow.com/questions/57812112/how-do-i-implement-rowspan-in-html-table-that-is-rendered-from-a-pandas-datafram

import pandas as pd

df = pd.DataFrame([
    ('A1', 'B1', '1', 'extra'), ('A1', 'B1', '2', 'extra'),
    ('A1', 'B2', '3', 'extra'), ('A1', 'B2', '4', 'extra'),
    ('A2', 'B1', '5', 'extra'), ('A2', 'B1', '6', 'extra'),
    ('A2', 'B2', '7', 'extra'), ('A2', 'B2', '8', 'extra'),
    ], columns=['A', 'B', 'C', 'D'])
df.set_index(['A', 'B', 'C'], inplace=True)
df.to_html("temp_test.html")