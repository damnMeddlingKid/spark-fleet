#!/bin/bash
env
source /root/spark_files/configure_spark.sh
IP=$(ip -o -4 addr list eth0 | perl -n -e 'if (m{inet\s([\d\.]+)\/\d+\s}xms) { print $1 }')

export MASTER = $IP

#TODO : START THE SPARK MASTER


