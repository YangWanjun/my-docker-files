FROM python:3.10.0-alpine
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

RUN apk update
RUN apk add git mariadb-dev gcc libc-dev
# pythonのライブラリー
ADD ./requirements.txt /root
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

EXPOSE 80
