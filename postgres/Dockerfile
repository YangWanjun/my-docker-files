FROM mdillon/postgis
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN localedef -i ja_JP -c -f UTF-8 -A /usr/share/locale/locale.alias ja_JP.UTF-8
ENV LANG ja_JP.UTF-8

RUN psql -f 01.timezone.sql -U dev -d GIS