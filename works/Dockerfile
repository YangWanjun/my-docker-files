FROM python:3.10.6-alpine3.15
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

RUN apk update
RUN apk add --no-cache git mariadb-dev gcc libc-dev
# for pillow
RUN apk add --no-cache jpeg-dev zlib-dev libjpeg
# for pdf2image
RUN apk add --no-cache poppler-utils poppler-data
# for firebase-admin's denpendency `grpcio`
RUN apk add --no-cache build-base linux-headers
# for install grpcio takes forever while installing firebase-admin, Don't use grpcio==1.44.0
# https://www.wheelodex.org/projects/grpcio/
RUN pip install grpcio==1.45.0

# pythonのライブラリー
ADD ./requirements.txt /root
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

ADD ./01.patch.sh /root
RUN sh /root/01.patch.sh
RUN rm -rf /root

EXPOSE 80
