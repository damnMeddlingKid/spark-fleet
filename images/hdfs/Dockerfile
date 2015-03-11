FROM debian:8.0

RUN apt-get update && apt-get install -y \
	less openjdk-7-jre-headless \
	wget \ 
	sudo \
	openssh-server \

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
ENV HADOOP_HOME=/opt/hadoop
ENV PATH $HADOOP_HOME/bin:$PATH

VOLUME ["/hdfs-data"]
	
RUN (wget -qO- http://mirror.csclub.uwaterloo.ca/apache/hadoop/common/stable2/hadoop-2.6.0.tar.gz | tar xvz -C /opt)
RUN ln -s /opt/hadoop-2.6.0 /opt/hadoop

ADD files /root/hadoop-config
