FROM python:3.9.6-alpine
LABEL maintainer="yangwanjun@e-business.co.jp"

WORKDIR /root

ADD . /root

RUN apk update
RUN apk add --no-cache gcc libc-dev postgresql-dev
# for pillow
RUN apk add --no-cache jpeg-dev zlib-dev libjpeg
# for pdf2image
RUN apk add --no-cache poppler-utils poppler-data
# pythonのライブラリー
RUN pip3 --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

EXPOSE 80
