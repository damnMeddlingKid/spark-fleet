#!/bin/bash
#env

source /root/spark-config/configure-spark.sh

WORKER=$(ip -o -4 addr list eth0 | perl -n -e 'if (m{inet\s([\d\.]+)\/\d+\s}xms) { print $1 }')

export WORKER=$IP

echo $SPARK_HOME

configure_spark

. ${SPARK_HOME}/conf/spark-env.sh

${SPARK_HOME}/bin/spark-class org.apache.spark.deploy.worker.Worker spark://$MASTER:$SPARK_MASTER_PORT

echo "SPARK WORKER STARTED ON spark://$WORKER:8888"

