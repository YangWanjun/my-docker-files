FROM ubuntu:18.04
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apt-get update -y
RUN apt-get install -y wget libxext-dev libfreetype6-dev xvfb openjdk-8-jdk

RUN chmod +x /root/install_openoffice.sh && \
    chmod +x /root/install_jdk1.7.0_45.sh && \
    chmod +x /root/enterpoint.sh
# Install openoffice
RUN sh /root/install_jdk1.7.0_45.sh && \
    sh /root/install_openoffice.sh

RUN rm -rf /root/bin

EXPOSE 8100
# CMD /opt/openoffice4/program/soffice -headless -nofirststartwizard  -accept="socket,host=0.0.0.0,port=8100;urp;"