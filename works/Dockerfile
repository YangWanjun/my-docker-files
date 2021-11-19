FROM python:3.10.0-alpine
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apk update
RUN apk add --no-cache git mariadb-dev gcc libc-dev
# for pillow
RUN apk add --no-cache jpeg-dev zlib-dev libjpeg
# for firebase-admin's denpendency `grpcio`
RUN apk add --no-cache build-base linux-headers
# pythonのライブラリー
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

RUN rm -f /root/Dockerfile && \
    rm -f /root/README.md && \
    rm -f /root/requirements.txt

EXPOSE 80
