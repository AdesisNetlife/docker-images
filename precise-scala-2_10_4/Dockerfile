FROM adesis/precise-oracle-jdk7
MAINTAINER Adesis Netlife "geeks@adesis.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ENV SCALA_HOME /usr/local/scala
ENV PATH $PATH:$SCALA_HOME/bin