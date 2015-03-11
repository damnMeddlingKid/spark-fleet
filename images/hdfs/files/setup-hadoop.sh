#!/bin/bash

function setup_hadoop() {
	rm -rf /root/.ssh
	mkdir /root/.ssh
	chmod go-rx /root/.ssh
	mkdir /var/run/sshd

	cp /root/hadoop_files/id_rsa /root/.ssh
	chmod go-rwx /root/.ssh/id_rsa
	cp /root/hadoop_files/authorized_keys /root/.ssh/authorized_keys
	chmod go-wx /root/.ssh/authorized_keys

	sed -i s/__MASTER__/${MASTER}/ /opt/hadoop/etc/hadoop/core-site.xml
	
	hadoop namenode -format
}



