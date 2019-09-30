FROM ubuntu:18.04
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apt-get update -y
RUN apt-get install -y wget libxext-dev libfreetype6-dev xvfb

RUN chmod +x /root/install_openoffice.sh && \
    chmod +x /root/install_jdk1.7.0_45.sh && \
    chmod +x /root/enterpoint.sh
# Install openoffice
RUN sh /root/install_jdk1.7.0_45.sh && \
    sh /root/install_openoffice.sh

RUN rm -rf /root/java

# EXPOSE 80
# ENTRYPOINT ["/root/enterpoint.sh"]
