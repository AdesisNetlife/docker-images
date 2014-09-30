#!/bin/sh

echo 'deb [arch=amd64] http://archive.cloudera.com/cdh5/ubuntu/precise/amd64/cdh precise-cdh5 contrib' | tee /etc/apt/sources.list.d/cloudera.list

curl -s http://archive.cloudera.com/cdh5/ubuntu/precise/amd64/cdh/archive.key | apt-key add -

apt-get update
apt-get -y -f install hadoop-hdfs hadoop-hdfs-namenode hadoop-hdfs-secondarynamenode hadoop-hdfs-datanode

# create log directories
mkdir -p /var/lib/hadoop-hdfs/cache/data/dfs/nn
mkdir -p /var/lib/hadoop-hdfs/cache/data/dfs/dn

# assign permissions
chown hdfs:hdfs /var/lib/hadoop-hdfs/cache/data/dfs/nn
chown hdfs:hdfs /var/lib/hadoop-hdfs/cache/data/dfs/dn

# init services
/etc/init.d/hadoop-hdfs-datanode start
/etc/init.d/hadoop-hdfs-namenode start
/etc/init.d/hadoop-hdfs-secondarynamenode start

# format hdfs
su hdfs -c "hdfs namenode -format -force"