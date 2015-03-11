#!/bin/bash

#function setup_hadoop() {
rm -rf /root/.ssh
mkdir /root/.ssh
chmod go-rx /root/.ssh
mkdir /var/run/sshd

cp /root/hadoop-config/core-site.xml /hdfs/hadoop/etc/hadoop/core-site.xml
cp /root/hadoop-config/hdfs-site.xml /hdfs/hadoop/etc/hadoop/hdfs-site.xml

cp /root/hadoop-config/id_rsa /root/.ssh
chmod go-rwx /root/.ssh/id_rsa
cp /root/hadoop-config/authorized_keys /root/.ssh/authorized_keys
chmod go-wx /root/.ssh/authorized_keys

sed -i s/__MASTER__/${MASTER}/ /hdfs/hadoop/etc/hadoop/core-site.xml

hadoop namenode -format
#}



