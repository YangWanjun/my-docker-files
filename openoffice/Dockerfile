FROM ubuntu:18.04
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apt-get update -y
RUN apt-get install -y wget libxext-dev libfreetype6-dev openjdk-8-jdk
# Locale japanese
RUN apt-get install -y language-pack-ja && \
    locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

# Install openoffice
RUN chmod +x /root/install_openoffice.sh
RUN sh /root/install_openoffice.sh
# IPA Fonts
RUN chmod +x /root/fix_font.sh
RUN sh /root/fix_font.sh

RUN rm -rf /root/bin && \
    rm -rf /root/IPAexfont00301

EXPOSE 8100
CMD /opt/openoffice4/program/soffice -headless -nofirststartwizard  -accept="socket,host=0.0.0.0,port=8100;urp;"
