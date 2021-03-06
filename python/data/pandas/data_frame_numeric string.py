# Reference: https://www.geeksforgeeks.org/apply-function-to-every-row-in-a-pandas-dataframe/
# (code changed from original)

import pandas as pd 
import numpy as np

# https://stackoverflow.com/questions/29902714/print-very-long-string-completely-in-pandas-dataframe
pd.options.display.max_colwidth = 5


def main(): 
      
    # create a dictionary with 
    # three fields each 
    data = { 
            'A':["333333331", "2", "3"],  
            'B':[4, 5, 6],  
            'C':[7, 8, 9] } 
      
    # Convert the dictionary into DataFrame  
    df = pd.DataFrame(data) 
    print("Original DataFrame:\n", df) 
    
    pd.options.display.max_colwidth = 55
    print("Original DataFrame:\n", df) 

    # https://stackoverflow.com/questions/27975069/how-to-filter-rows-containing-a-string-pattern-from-a-pandas-dataframe
    df2 = df[df['A'].str.contains("333")]
    print("Rows contains 333 DataFrame:\n", df2) 

if __name__ == '__main__': 
    main() 