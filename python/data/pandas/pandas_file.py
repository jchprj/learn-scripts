# pip install pandas

# https://www.geeksforgeeks.org/convert-csv-to-html-table-in-python/

import pandas as pd 
  
# to read csv file named "samplee" 
a = pd.read_csv("test.csv") 
a.to_csv("temp_test.csv")
# https://stackoverflow.com/questions/20107570/removing-index-column-in-pandas-when-reading-a-csv
a.to_csv("temp_test.csv", index = False)


# to save as html file 
# named as "Table" 
a.to_html("test.csv.htm") 
  
# assign it to a  
# variable (string) 
# https://stackoverflow.com/questions/50807744/apply-css-class-to-pandas-dataframe-using-to-html
pd.set_option('colheader_justify', 'center')
html_file = a.to_html(escape=True) 


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