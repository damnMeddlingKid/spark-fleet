#!/bin/bash
#env

source /root/spark-config/configure-spark.sh

WORKER=$(ip -o -4 addr list eth0 | perl -n -e 'if (m{inet\s([\d\.]+)\/\d+\s}xms) { print $1 }')

export WORKER=$IP

configure_spark

${SPARK_HOMEn}/bin/start-worker.sh

echo "SPARK WORKER STARTED ON spark://$WORKER:8888"

while true;
do 
	tail -f ${SPARK_HOME}/logs/*.out
	sleep 1
done

