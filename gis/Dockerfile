FROM python:3.9.2-alpine3.13
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apk update
RUN apk add musl-dev gcc make g++ file postgresql-dev
# pythonのライブラリー
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

EXPOSE 5000
