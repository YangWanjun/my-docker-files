FROM python:3.10.4-alpine3.15
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

RUN apk update
RUN apk add --no-cache git mariadb-dev gcc libc-dev
# for pillow
RUN apk add --no-cache jpeg-dev zlib-dev libjpeg
# for firebase-admin's denpendency `grpcio`
RUN apk add --no-cache build-base linux-headers
# for install grpcio takes forever while installing firebase-admin, Don't use grpcio==1.44.0
# https://www.wheelodex.org/projects/grpcio/
RUN pip install grpcio==1.45.0

ADD . /root
# pythonのライブラリー
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

RUN rm -f /root/Dockerfile && \
    rm -f /root/README.md && \
    rm -f /root/requirements.txt

EXPOSE 80
