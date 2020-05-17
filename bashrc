######  Spark-Hadoop Setup   #######
export SPARK_HOME="/home/sourabh/spark_hadoop/spark-2.4.0-bin-hadoop2.7"
export PATH=$SPARK_HOME:$SPARK_HOME/bin:$PATH
export SPARK_CLASSPATH=$SPARK_HOME/jars
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
#export PYSPARK_DRIVER_PYTHON="jupyter"
#export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
export PYSPARK_PYTHON=python3
