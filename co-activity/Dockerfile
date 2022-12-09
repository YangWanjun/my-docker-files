FROM python:3.10.9-alpine3.17
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

RUN apk update
RUN apk add --no-cache mariadb-dev gcc libc-dev
# for pillow
RUN apk add --no-cache jpeg-dev zlib-dev libjpeg

# pythonのライブラリー
ADD ./requirements.txt /root
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

RUN rm -f /root/Dockerfile && \
    rm -f /root/README.md && \
    rm -f /root/requirements.txt

EXPOSE 80
