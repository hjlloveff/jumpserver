#!/bin/bash
tar -zxvf sofrware.tar.gz
cd Python-3.6.1
./configure && make && make install
yum -y install wget sqlite-devel xz gcc automake zlib-devel openssl-devel epel-release git nginx redis yum -y install MariaDB-server MariaDB-client
cd /opt/jumpserver/requirements && yum -y install $(cat rpm_requirements.txt)
cd /opt/coco/requirement && yum -y  install $(cat rpm_requirements.txt)
