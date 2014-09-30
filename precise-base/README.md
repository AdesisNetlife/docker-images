### Introduction

A base image based on ubuntu:12.04. Supervisor has been pre-installed in this image. It will serve as base image for all the Ubuntu/Precise Docker images I intend to create.

### Usage

##### From Docker Public Repository

  > docker pull adesis/precise-base

##### Using Source

  > git clone git@github.com:adesis/docker-images.git
  > cd docker-images/precise-base
  > docker build -rm -t {{ user }}/{{ image-name }} .

**{{ user }}** and **{{ image-name }}** are to be defined by you. Refer Docker.io documentation for how to build images using Dockerfile.  

### Login Details

- root / root
- ubuntu / ubuntu

### Installed Packages

curl python-software-properties nano supervisor git uuid-dev libtool automake pkg-config unzip make build-essential rsync

### Configured Services & Ports

- supervisord / -  