FROM python:3.11.2-slim
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

RUN apt-get update -y
# for mysqlclient
RUN apt-get install -y gcc libmariadb-dev
# zipファイル圧縮用
RUN apt-get install -y zip convmv
# Locale
RUN apt-get install -y locales && \
    locale-gen ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
RUN cp /etc/localtime /etc/localtime.org && \
    ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
# pythonのライブラリー
ADD ./requirements.txt /root
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

ADD ./01.patch.sh /root
RUN sh /root/01.patch.sh
RUN rm -rf /root

EXPOSE 80
