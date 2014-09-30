#!/bin/sh

# format hdfs
su hdfs -c "hdfs namenode -format -force"

# start supervisor
/usr/bin/supervisord