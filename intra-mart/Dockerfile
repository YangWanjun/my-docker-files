FROM ubuntu:18.04
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apt-get update -y
RUN apt-get install -y build-essential libssl-dev
# Java Install
RUN chmod +x /root/install_jdk1.7.0_45.sh && \
    chmod +x /root/install_jdk12.0.2.sh
RUN sh /root/install_jdk1.7.0_45.sh
# Resin Install
RUN chmod +x /root/install_resin.sh && \
    chmod +x /root/config_resin.sh
RUN sh /root/install_resin.sh && \
    sh /root/config_resin.sh
RUN rm -rf /root/*
