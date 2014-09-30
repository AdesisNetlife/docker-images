FROM adesis/precise-base
MAINTAINER Adesis Netlife "geeks@adesis.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

ADD config/supervisor/conf.d/mongodb.conf /etc/supervisor/conf.d/mongodb.conf

EXPOSE 27017

ADD scripts/bootstrap.sh /bootstrap.sh
CMD ["/bin/sh", "-e", "/bootstrap.sh"]