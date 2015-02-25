#!/bin/bash
#env

source /root/spark-config/configure-spark.sh

IP=$(ip -o -4 addr list eth0 | perl -n -e 'if (m{inet\s([\d\.]+)\/\d+\s}xms) { print $1 }')

export MASTER $IP

/bin/etcdctl set /spark/master $IP

configure_spark

/opt/spark-1.0.0/sbin/start-master.sh

echo "SPARK MASTER STARTED ON spark://$MASTER:7077"

