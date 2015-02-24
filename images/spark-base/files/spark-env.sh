#!/usr/bin/env bash
#export SCALA_HOME=/opt/scala-2.10.3
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export SPARK_HOME=__SPARK_HOME__
export SPARK_WORKER_INSTANCES=1
export SPARK_WORKER_CORES =4
#export SPARK_MEM=800m
export SPARK_WORKER_MEMORY=8g
export SPARK_MASTER_MEM=1500m
export SPARK_MASTER_IP=$MASTER
export HADOOP_HOME="/etc/hadoop"
export MASTER="spark://$MASTER:7077"
export SPARK_LOCAL_DIR=/tmp/spark