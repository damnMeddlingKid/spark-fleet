#!/bin/bash

function configure_spark() {
	cp /root/spark-config/spark-env.sh ${SPARK_HOME}/conf/
	cp /root/spark-config/log4j.properties ${SPARK_HOME}/conf/
}