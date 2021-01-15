import os, json

filename = "test.json" 
with open(filename, encoding='utf-8') as data_file:    
    data = json.load(data_file)
print(data)
with open('test.json', 'r') as reader:
    lines = reader.readlines()
print(lines)




# https://github.com/rkern/line_profiler/issues/37
# UnicodeDecodeError: 'gbk' codec can't decode byte 0xaa in position 553: illegal multibyte sequence

# with open(filename, 'rb') as f:
# works!

open(filename, 'rb')


# https://stackoverflow.com/questions/2769061/how-to-erase-the-file-contents-of-text-file-in-python
open('temp_test.txt', 'w').close()





# Saving Text, JSON, and CSV to a File in Python

# From <https://www.geeksforgeeks.org/saving-text-json-and-csv-to-a-file-in-python/?ref=rp> 
# File_object = open("File_Name", "Access_Mode")

books = ["a", "b", "c"]

with open('temp_test.txt', 'w') as file: 
    file.writelines("% s\n" % data for data in books)


dict1 ={  
    "emp1": {  
        "name": "Lisa",  
        "designation": "programmer",  
        "age": "34",  
        "salary": "54000"
    },  
    "emp2": {  
        "name": "Elis",  
        "designation": "Trainee",  
        "age": "24",  
        "salary": "40000"
    },  
}  
with open('temp_test.json', 'w') as file: 
    json.dump(dict1, file, indent = 6)  
    

# field names   
fields = ['Name', 'Branch', 'Year', 'CGPA']   
# data rows of csv file   
rows = [ ['Nikhil', 'COE', '2', '9.0'],   
         ['Sanchit', 'COE', '2', '9.1'],   
         ['Aditya', 'IT', '2', '9.3'],   
         ['Sagar', 'SE', '1', '9.5'],   
         ['Prateek', 'MCE', '3', '7.8'],   
         ['Sahil', 'EP', '2', '9.1']]   
import csv
with open("temp_test.csv", 'w') as csvfile:   
    # creating a csv writer object   
    csvwriter = csv.writer(csvfile)   
    # writing the fields   
    csvwriter.writerow(fields)   
    # writing the data rows   
    csvwriter.writerows(rows) 