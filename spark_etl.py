#!/usr/bin/python3

####################################################################
#1. Spin up a Spark instance

#2. Spin up a Postgres DB instance

#3. Process the file in the below link and load it into a table (stock_prices) in the database.

#4. Create another table (stock_monthly_prices), this table will contain just the following columns: a) ticker b)avg value for the month

#5. Setup a spark job to automate loading every hour.

####################################################################

from pyspark.sql import SparkSession
from pyspark.sql.types import (StructType, StructField, 
                              DateType, IntegerType,
                              FloatType, StringType)

spark = SparkSession.builder.appName("etl").getOrCreate()

schema = StructType([
    StructField("stock_date", DateType(), True),
    StructField("openning_price", FloatType(), True),
    StructField("high_price", FloatType(), True),
    StructField("low_price", FloatType(), True),
    StructField("closing_price", FloatType(), True),
    StructField("volume", IntegerType(), True),
    StructField("ticker", StringType(), True)
])

#df = spark.read.csv("stock_prices.csv", header=True, inferSchema=True)
df = spark.read.csv("stock_prices.csv", header=True, schema=schema)
df.printSchema()

#for row in df.head(5):
#    print(row)
#    print("\n")

df.show()

db_url =  "jdbc:postgresql://127.0.0.1:5432/sparkdb"
properties = {"user": "spark","password": "spark","driver": "org.postgresql.Driver"}
df.write.jdbc(url=db_url, table="stock_price", mode="overwrite", properties=properties)

