FROM python:3.9.6-alpine
LABEL maintainer="yangwanjun@e-business.co.jp"

WORKDIR /root

ADD . /root

RUN apk update
RUN apk add git mariadb-dev gcc libc-dev
# for pillow
RUN apk add jpeg-dev zlib-dev libjpeg
# pythonのライブラリー
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

EXPOSE 80
