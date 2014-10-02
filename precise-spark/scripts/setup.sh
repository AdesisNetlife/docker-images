#!/bin/sh

cd /usr/local/
wget http://d3kbcqa49mib13.cloudfront.net/spark-1.1.0-bin-hadoop2.3.tgz
tar zxvf spark-1.1.0-bin-hadoop2.3.tgz
rm spark-1.1.0-bin-hadoop2.3.tgz
mv /usr/local/spark-1.1.0-bin-hadoop2.3 /usr/local/spark