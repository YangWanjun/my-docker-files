FROM ubuntu:18.04
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apt-get update -y
RUN apt-get install -y build-essential libssl-dev
# Java Install
RUN apt install -y ./jdk-12.0.2_linux-x64_bin.deb
RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-12.0.2/bin/java 1081 && \
    update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-12.0.2/bin/javac 1081 && \
    update-alternatives --install /usr/bin/javadoc javadoc /usr/lib/jvm/jdk-12.0.2/bin/javadoc 1081 && \
    update-alternatives --install /usr/bin/javap javap /usr/lib/jvm/jdk-12.0.2/bin/javap 1081
# Resin Install
RUN chmod +x /root/start_resin.sh && \
    chmod +x /root/config_resin.sh
RUN sh /root/start_resin.sh && \
    sh /root/config_resin.sh
RUN rm -rf /root/resin-pro-4.0.61 && \
    rm postgresql-42.2.6.jar && \
    rm jdk-12.0.2_linux-x64_bin.deb && \
    rm resin-pro-4.0.61.tar.gz
