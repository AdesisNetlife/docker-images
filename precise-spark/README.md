### Introduction

A base image based on ubuntu:12.04 with Apache Spark (Hadoop 2.3) installed on a single node in pseudo-standalone cluster. Supervisor, OpenSSH server, Oracle JDK 7 and Scala 2.10.4 has been pre-installed in this image.

### Usage

##### From Docker Public Repository

      > docker pull adesis/precise-spark

##### Using Source

      > git clone git@github.com:AdesisNetlife/docker-images.git
      > cd docker-images/precise-spark
      > docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh oracle-java7-installer oracle-java7-set-default scala sbt spark

### Configured Services & Ports

- supervisord / -
- sshd / 22
- spark / 7077 8080 8081 8888