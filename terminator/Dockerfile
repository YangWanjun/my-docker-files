FROM python:3.10.4-alpine3.15
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

RUN apk update
# timezone to Asia/Tokyo
RUN apk --no-cache add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata
# pythonのライブラリー
ADD ./requirements.txt /root
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

EXPOSE 5000
