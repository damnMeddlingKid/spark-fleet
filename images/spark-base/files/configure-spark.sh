#!/bin/bash

function configure_spark() {
	cp /root/spark-config/spark-env.sh /opt/spark-$SPARK_VERSION/conf/
	cp /root/spark-config/log4j.properties /opt/spark-$SPARK_VERSION/conf/
}