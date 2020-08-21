# Reference: https://www.geeksforgeeks.org/apply-function-to-every-row-in-a-pandas-dataframe/
# (code changed from original)

import pandas as pd 
import numpy as np

# https://stackoverflow.com/questions/29902714/print-very-long-string-completely-in-pandas-dataframe
pd.options.display.max_colwidth = 100
  
# Function to add 
def add(a, b, c): 
    return a + b + c


def normalize(x, y): 
    x_new = ((x - np.mean([x, y])) /
             (max(x, y) - min(x, y))) 
      
    # print(x_new) 
    return x_new 


def main(): 
      
    # create a dictionary with 
    # three fields each 
    data = { 
            'A':[1, 2, 3],  
            'B':[4, 5, 6],  
            'C':[7, 8, 9] } 
      
    # Convert the dictionary into DataFrame  
    df = pd.DataFrame(data) 
    print("Original DataFrame:\n", df) 
      
    df['add'] = df.apply(lambda row : add(row['A'], 
                     row['B'], row['C']), axis = 1) 
   
    print('\nAfter Applying Function: ') 
    # printing the new dataframe 
    print(df) 

    # applying function to each row in the dataframe 
    # and storing result in a new coloumn 
    df['add'] = df.apply(np.sum, axis = 1) 
   
    print('\nAfter Applying Function: ') 
    # printing the new dataframe 
    print(df) 

    df['X'] = df.apply(lambda row : normalize(row['A'], row['B']), axis = 1) 
   
    print('\nNormalized:') 
    print(df) 

    # https://pandas.pydata.org/pandas-docs/version/0.23.3/generated/pandas.DataFrame.drop.html
    df = df.drop(['X'], axis=1)
   
    print('\nDropped:') 
    print(df) 

   
if __name__ == '__main__': 
    main() 