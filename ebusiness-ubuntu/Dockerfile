FROM ubuntu:18.04
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apt-get update -y
RUN apt-get install -y git python3.6 python3-pip libmysqlclient-dev zip convmv
# Locale
RUN apt-get install -y language-pack-ja && \
    locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
# pythonのライブラリー
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

RUN chmod +x /root/fix_font.sh

# RUN sh /root/fix_font.sh

EXPOSE 80
