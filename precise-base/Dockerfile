FROM ubuntu:12.04
MAINTAINER Adesis Netlife "geeks@adesis.com"

ADD scripts/setup.sh /setup.sh
RUN sh /setup.sh

##
# Copy required conf files and folders
##
ADD config/supervisor/supervisord.conf /etc/supervisor/supervisord.conf
ADD config/supervisor/conf.d/sshd.conf /etc/supervisor/conf.d/sshd.conf

##
# Expose ports and execute the run script
##
EXPOSE 22
ADD scripts/bootstrap.sh /bootstrap.sh

CMD ["/bin/sh", "-e", "/bootstrap.sh"]