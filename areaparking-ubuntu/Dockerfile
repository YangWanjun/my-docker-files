FROM ubuntu:18.04
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apt-get update -y
RUN apt-get install -y git python3.6 python3-pip libmysqlclient-dev zlib1g-dev python3-gdal
# install wkhtmltopdf
RUN apt-get install -y build-essential xorg libssl-dev libxrender-dev gdebi
RUN gdebi --n libpng12-0_1.2.54-1ubuntu1_amd64.deb
RUN gdebi --n wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
# pythonのライブラリー
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

RUN chmod +x /root/enterpoint.sh && \
    chmod +x /root/fix_errors_pyminizip.sh && \
    chmod +x /root/fix_errors_geos.sh && \
    chmod +x /root/fix_font.sh

RUN sh /root/fix_errors_pyminizip.sh && \
    sh /root/fix_errors_geos.sh && \
    sh /root/fix_font.sh

EXPOSE 80

ENTRYPOINT ["/root/enterpoint.sh"]
