# https://www.w3schools.com/python/python_mongodb_update.asp

import pymongo

CONNECTION_STRING = f"mongodb://localhost:27017/"
myclient = pymongo.MongoClient(CONNECTION_STRING)
mydb = myclient["mydatabase"]
mycol = mydb["customers"]

myquery = { "address": "Valley 345" }
newvalues = { "$set": { "address": "Canyon 123" } }

mycol.update_one(myquery, newvalues)

#print "customers" after the update:
for x in mycol.find():
  print(x)