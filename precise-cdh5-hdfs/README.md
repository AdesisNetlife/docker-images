### Introduction

A base image based on ubuntu:12.04 with Cloudera HDFS installed on a single node in pseudo-distributed manner. Supervisor, OpenSSH server and Oracle JDK 7 has been pre-installed in this image.

### Usage

##### From Docker Public Repository

      > docker pull adesis/precise-cdh5-hdfs

##### Using Source

      > git clone git@github.com:AdesisNetlife/docker-images.git
      > cd docker-images/precise-cdh5-hdfs
      > docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh oracle-java7-installer oracle-java7-set-default hadoop-hdfs-namenode hadoop-hdfs-secondarynamenode hadoop-hdfs-datanode

### Configured Services & Ports

- supervisord / -
- sshd / 22
- hadoop-hdfs-namenode / 50070 9000
- hadoop-hdfs-secondarynamenode / 50090
- hadoop-hdfs-datanode / 50075 50010 50020