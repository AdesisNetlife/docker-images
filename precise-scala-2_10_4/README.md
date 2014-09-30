### Introduction

A base image based on ubuntu:12.04 with Scala 2.10.4 and SBT 0.13.6. Supervisor, OpenSSH server and Oracle JDK 7 has been pre-installed in this image.

### Usage

##### From Docker Public Repository

  > docker pull adesis/precise-scala-2_10_4

##### Using Source

  > git clone git@github.com:adesis/docker-images.git
  > cd docker-images/precise-scala-2_10_4
  > docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync openssh-server ssh oracle-java7-installer oracle-java7-set-default sbt scala

### Configured Services & Ports

- supervisord / -
- sshd / 22

### Environment Variables

- $JAVA_HOME  = /usr/lib/jvm/java-7-oracle
- $SCALA_HOME = /usr/local/scala