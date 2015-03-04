#!/bin/bash
#env

source /root/spark-config/configure-spark.sh

WORKER=$(ip -o -4 addr list eth0 | perl -n -e 'if (m{inet\s([\d\.]+)\/\d+\s}xms) { print $1 }')

export WORKER=$IP

echo "some of the env vars"
echo $SPARK_HOME
echo $MASTER
echo $SPARK_MASTER_PORT

configure_spark

. ${SPARK_HOME}/conf/spark-env.sh

${SPARK_HOME}/bin/spark-class org.apache.spark.deploy.worker.Worker $MASTER

echo  "SPARK WORKER STARTED ON spark://$WORKER:8888"

