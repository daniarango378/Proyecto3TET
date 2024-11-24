#!/bin/bash
export SPARK_HOME=/usr/lib/spark
export PATH=$SPARK_HOME/bin:$PATH
spark-submit --jars /home/hadoop/mysql-connector-j-9.1.0.jar /home/hadoop/extract_to_raw.py >> /home/hadoop/extract_to_raw.log 2>&1

