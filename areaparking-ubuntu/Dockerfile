FROM ubuntu:18.04
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD ./requirements.txt /root/
COPY ./pyminizip-0.2.1.tar.gz /root/

RUN apt-get update -y
RUN apt-get install -y git python3.6 python3-pip libmysqlclient-dev zlib1g-dev python3-gdal

# pythonのライブラリー
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

# install pyminizip
RUN tar -xzf pyminizip-0.2.1.tar.gz && \
    cd pyminizip-0.2.1 && \
    sed -i '29i#include "zlib.h"' src/crypt.h && \
    python3 setup.py install
