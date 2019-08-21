#!/bin/bash

mkdir /usr/java
cd /usr/java

cat /root/java/jdk-7u45-linux-x64.tar.gz.part* >jdk-7u45-linux-x64.tar.gz

tar zxvf jdk-7u45-linux-x64.tar.gz
rm jdk-7u45-linux-x64.tar.gz

update-alternatives --install /usr/bin/java java /usr/java/jdk1.7.0_45/bin/java 1081
update-alternatives --install /usr/bin/javac javac /usr/java/jdk1.7.0_45/bin/javac 1081
update-alternatives --install /usr/bin/javadoc javadoc /usr/java/jdk1.7.0_45/bin/javadoc 1081
update-alternatives --install /usr/bin/javap javap /usr/java/jdk1.7.0_45/bin/javap 1081