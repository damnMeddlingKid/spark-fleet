FROM debian:8.0

RUN apt-get update && apt-get install -y \
	less openjdk-7-jre-headless \
	wget \ 
	sudo \
	openssh-server

ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
ENV HADOOP_HOME=/hdfs/hadoop
ENV PATH=$HADOOP_HOME/bin:$PATH

EXPOSE 50070 8020 9000

RUN mkdir /hdfs
	
RUN (wget -qO- http://mirror.csclub.uwaterloo.ca/apache/hadoop/common/stable2/hadoop-2.6.0.tar.gz | tar xvz -C /hdfs)
RUN ln -s /hdfs/hadoop-2.6.0 /hdfs/hadoop

VOLUME ["/hdfs"]

ADD files /root/hadoop-config

RUN chmod a+x /root/hadoop-config/setup-hadoop-master.sh
RUN chmod a+x /root/hadoop-config/setup-hadoop-worker.sh
