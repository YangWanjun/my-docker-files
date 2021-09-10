FROM python:3.9.6-alpine

LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apk update
RUN apk add git mariadb-dev gcc libc-dev build-base

RUN tar xf mecab-0.996.tar.gz && \
    cd mecab-0.996 && \
    ./configure --enable-utf8-only --with-charset=utf8 && \
    make && \
    make install

RUN tar xf darts-0.32.tar.gz && \
    cd darts-0.32 && \
    ./configure && \
    make && \
    make install

RUN tar xf chasen-2.4.5.tar.gz && \
    cd chasen-2.4.5 && \
    ./configure && \
    make && \
    make install

# pythonのライブラリー
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

EXPOSE 8000
