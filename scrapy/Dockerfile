FROM python:3.7.4
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

# install requirements
RUN pip --no-cache-dir install scrapy==1.6.0
RUN pip --no-cache-dir install beautifulsoup4==4.8.0
RUN pip --no-cache-dir install psycopg2==2.8.3
RUN pip --no-cache-dir install mysqlclient==1.4.2

EXPOSE 80
