FROM python:3.7.4
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

# pythonのライブラリー
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

EXPOSE 80
