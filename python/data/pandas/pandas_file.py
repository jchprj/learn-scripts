# pip install pandas

# https://www.geeksforgeeks.org/convert-csv-to-html-table-in-python/

import pandas as pd 
  
# to read csv file named "samplee" 
a = pd.read_csv("test.csv") 
  
# to save as html file 
# named as "Table" 
a.to_html("test.csv.htm") 
  
# assign it to a  
# variable (string) 
html_file = a.to_html() 


b = pd.read_json("test.json")
b.to_html("test.json.htm")


c = pd.read_excel("test.xlsx")
c.to_html("test.xlsx.htm")


# pip install lxml
d = pd.read_html("test.csv.htm")
# [   Unnamed: 0 Name  Column1 Column2  Column3
# 0           0    A      111       x       10
# 1           1    B      222       y       20
# 2           2    C      333       z       30]
print(d)



# https://stackoverflow.com/questions/22604564/create-pandas-dataframe-from-a-string
from io import StringIO
TESTDATA = StringIO("""col1;col2;col3
    1;4.4;99
    2;4.5;200
    3;4.7;65
    4;3.2;140
    """)
df = pd.read_csv(TESTDATA, sep=";")
print(df)