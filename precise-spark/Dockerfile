FROM adesis/precise-scala-2_10_4
MAINTAINER Adesis Netlife "geeks@adesis.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ENV SPARK_HOME /usr/local/spark

ADD config/supervisor/conf.d/spark.conf /etc/supervisor/conf.d/spark.conf

EXPOSE 8888 8080 8081 7077

ADD scripts/bootstrap.sh /bootstrap.sh

CMD ["/bin/sh", "-e", "/bootstrap.sh"]