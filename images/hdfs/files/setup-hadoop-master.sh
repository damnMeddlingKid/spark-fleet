#!/bin/bash

#function setup_hadoop() {
rm -rf /root/.ssh
mkdir /root/.ssh
chmod go-rx /root/.ssh
mkdir /var/run/sshd

cp /root/hadoop-config/core-site.xml /hdfs/hadoop/etc/hadoop/core-site.xml
cp /root/hadoop-config/hdfs-site.xml /hdfs/hadoop/etc/hadoop/hdfs-site.xml
#careful this file is generated on startup
cp /opt/tmp/slaves $HADOOP_CONF_DIR/slaves

cp /root/hadoop-config/id_rsa /root/.ssh
chmod go-rwx /root/.ssh/id_rsa
cp /root/hadoop-config/authorized_keys /root/.ssh/authorized_keys
chmod go-wx /root/.ssh/authorized_keys

sed -i s/__MASTER__/${MASTER}/ /hdfs/hadoop/etc/hadoop/core-site.xml

#if[! -d "/hdfs-data/curren"]
#	then
hadoop namenode -format
#fi

sudo /etc/init.d/ssh start

$HADOOP_HOME/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR --script hdfs start namenode
while true; do sleep 1000; done

#}



