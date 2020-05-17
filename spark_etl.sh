#!/bin/bash
echo "Loading stock_price.csv file to DataBase using pyspark"
/home/sourabh/spark_hadoop/spark-2.4.0-bin-hadoop2.7/bin/spark-submit /home/sourabh/dev/spark/spark_etl.py
