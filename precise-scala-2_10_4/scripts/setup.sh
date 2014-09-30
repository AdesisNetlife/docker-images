#!/bin/sh

cd /usr/local/
wget http://scala-lang.org/files/archive/scala-2.10.4.tgz
tar zxvf scala-2.10.4.tgz
rm scala-2.10.4.tgz
mv /usr/local/scala-2.10.4 /usr/local/scala

wget https://dl.bintray.com/sbt/debian/sbt-0.13.6.deb
dpkg -i sbt-0.13.6.deb
rm sbt-0.13.6.deb