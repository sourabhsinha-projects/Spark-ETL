0. Download Ubuntu 18.04 (ships with python-3.6), install JDK-8, scala, pip3, spark+hadoop-2.4.0 (critical as it needs to compatible with python-3.6 and java-8), git...(Recently learned that one can also spin up docker image with spark installed from Docker Hub!)

1. Spin up a Spark instance (CHECKOUT --> env setup in spark-install.PNG and bashrc)

2. Spin up a Postgres DB instance (CHECKOUT --> postgresql-install.PNG)

3. Process the file in the below link and load it into a table (stock_prices) in the database. (CHECKOUT --> spark_etl.sh, spark_etl.py, spark_etl.log)

4. Create another table (stock_monthly_prices), this table will contain just the following columns: (CHECKOUT --> stock_prices.sql, scheduling.PNG, load_stock_monthly_price.PNG, load_stock_price.PNG for table load. Could not export data to file)
	a) ticker
	b) avg value for the month

5. Setup a spark job to automate loading every hour. (CHECKOUT --> crontab, scheduling.PNG)
