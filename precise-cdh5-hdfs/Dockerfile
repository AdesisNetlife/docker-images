FROM adesis/precise-oracle-jdk7
MAINTAINER Adesis Netlife "geeks@adesis.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

# pseudo distributed
ADD config/hdfs/core-site.xml /etc/hadoop/conf/core-site.xml
ADD config/hdfs/hdfs-site.xml /etc/hadoop/conf/hdfs-site.xml

ADD config/supervisor/conf.d/hadoop-hdfs-datanode.conf /etc/supervisor/conf.d/hadoop-hdfs-datanode.conf
ADD config/supervisor/conf.d/hadoop-hdfs-namenode.conf /etc/supervisor/conf.d/hadoop-hdfs-namenode.conf
ADD config/supervisor/conf.d/hadoop-hdfs-secondarynamenode.conf /etc/supervisor/conf.d/hadoop-hdfs-secondarynamenode.conf

EXPOSE 50020 50090 50070 50010 50075 9000

ADD scripts/bootstrap.sh /bootstrap.sh

CMD ["/bin/sh", "-e", "/bootstrap.sh"]