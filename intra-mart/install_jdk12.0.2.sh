#!/bin/bash

apt install -y ./jdk-12.0.2_linux-x64_bin.deb
update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-12.0.2/bin/java 1081
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-12.0.2/bin/javac 1081
update-alternatives --install /usr/bin/javadoc javadoc /usr/lib/jvm/jdk-12.0.2/bin/javadoc 1081
update-alternatives --install /usr/bin/javap javap /usr/lib/jvm/jdk-12.0.2/bin/javap 1081
