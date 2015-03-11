FROM hdfs:latest

ENV SPARK_VERSION 1.1.0
ENV SPARK_HOME /opt/spark-$SPARK_VERSION
ENV PATH $SPARK_HOME:$PATH
ENV SPARK_MASTER_PORT 7077

RUN apt-get update && apt-get install -y \
	less openjdk-7-jre-headless \
	wget
	
RUN (wget -qO- http://d3kbcqa49mib13.cloudfront.net/spark-$SPARK_VERSION-bin-hadoop2.4.tgz | tar xvz -C /opt)
RUN ln -s /opt/spark-$SPARK_VERSION-bin-hadoop2.4 /opt/spark-$SPARK_VERSION
RUN mkdir -p /tmp/spark

COPY files /root/spark-config
