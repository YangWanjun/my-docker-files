FROM ubuntu:18.04
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apt-get update -y
RUN apt-get install -y git python2.7 python-pip libmysqlclient-dev zip convmv
# install wkhtmltopdf
RUN apt-get install -y build-essential libssl-dev libxrender-dev gdebi
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install xorg
RUN gdebi --n libpng12-0_1.2.54-1ubuntu1_amd64.deb
RUN gdebi --n wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
# Locale
RUN apt-get install -y language-pack-ja && \
    locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
# pythonのライブラリー
RUN pip --no-cache-dir install django==1.11.4 && \
    pip --no-cache-dir install djangorestframework==3.6.4 && \
    pip --no-cache-dir install django-filter==1.0.4 && \
    pip --no-cache-dir install crontab==0.22.0 && \
    pip --no-cache-dir install openpyxl==2.5.0 && \
    pip --no-cache-dir install xlsxwriter==1.0.2 && \
    pip --no-cache-dir install MySQL-python==1.2.5 && \
    pip --no-cache-dir install xlrd==1.1.0 && \
    pip --no-cache-dir install pdfkit==0.6.1 && \
    pip --no-cache-dir install pillow==4.3 && \
    pip --no-cache-dir install matplotlib==2.1.2 && \
    pip --no-cache-dir install requests==2.18.4 && \
    pip --no-cache-dir install qrcode && \
    pip --no-cache-dir install pyminizip && \
    pip --no-cache-dir install pandas==0.22.0

RUN chmod +x /root/enterpoint.sh && \
    chmod +x /root/fix_font.sh

RUN sh /root/fix_errors_geos.sh && \
    sh /root/fix_font.sh && \
    rm libpng12-0_1.2.54-1ubuntu1_amd64.deb && \
    rm wkhtmltox-0.12.2.1_linux-trusty-amd64.deb

EXPOSE 80

ENTRYPOINT ["/root/enterpoint.sh"]
