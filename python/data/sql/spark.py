# https://spark.apache.org/docs/latest/api/python/getting_started/quickstart_df.html

from datetime import datetime, date
import pandas as pd
from pyspark.sql import Row
from pyspark.sql import SparkSession

spark = SparkSession.builder.getOrCreate()
df = spark.createDataFrame([
    Row(a=1, b=2., c='string1', d=date(2000, 1, 1), e=datetime(2000, 1, 1, 12, 0)),
    Row(a=2, b=3., c='string2', d=date(2000, 2, 1), e=datetime(2000, 1, 2, 12, 0)),
    Row(a=4, b=5., c='string3', d=date(2000, 3, 1), e=datetime(2000, 1, 3, 12, 0))
])
print(df)


# https://stackoverflow.com/questions/39067505/pyspark-display-a-spark-data-frame-in-a-table-format
df.show(n=2)


# https://stackoverflow.com/questions/41826553/convert-between-spark-sql-dataframe-and-pandas-dataframe

df_pandas = df.toPandas()
print(df_pandas)

# https://stackoverflow.com/questions/47201527/pyspark-data-frame-to-hive-table
tbl = df.createOrReplaceTempView("my_table") 
print(tbl)

tbl = spark.read.table("my_table")
print(tbl)

# https://stackoverflow.com/questions/52227439/how-to-check-if-key-exists-in-spark-sql-map-type
result = spark.sql("select * from my_table where a is not null")
print(result)
# df.where($"map_column"("testKey").isNotNull)


# https://spark.apache.org/docs/latest/api/python/reference/pyspark.sql/api/pyspark.sql.functions.to_json.html
# https://stackoverflow.com/questions/49602965/pyspark-dataframe-to-json-function
from pyspark.sql import functions as F
data = [(1, Row(age=2, name='Alice'))]
df = spark.createDataFrame(data, ("key", "value"))
result = df.select(F.to_json(df.value).alias("json")).collect()
print(result)