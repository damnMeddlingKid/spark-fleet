FROM ubuntu:14.10

ENV SPARK_VERSION 1.1.0
ENV SPARK_HOME /opt/spark-$SPARK_VERSION
ENV PATH $SPARK_HOME:$PATH

RUN apt-get update && apt-get install -y less openjdk-7-jre-headless
RUN (cd /opt) && (wget -q -0- http://d3kbcqa49mib13.cloudfront.net/spark-$SPARK_VERSION-bin-hadoop2.4.tgz | tar xvz)
RUN ln -s /opt/spark-$SPARK_VERSION-bin-hadoop2 /opt/spark-$SPARK_VERSION
RUN mkdir -p /tmp/spark

COPY files /root/spark-config