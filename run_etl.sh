#!/bin/bash
export SPARK_HOME=/usr/lib/spark
export PATH=$SPARK_HOME/bin:$PATH
spark-submit --jars /home/hadoop/mysql-connector-j-9.1.0.jar /home/hadoop/etl_covid.py >> /home/hadoop/etl.log 2>&1

