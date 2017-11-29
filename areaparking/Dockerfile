FROM python:3.6.3-alpine3.6
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apk --no-cache add --update git make gcc g++
# pillowは以下のライブラリーが必要
RUN apk --no-cache add zlib-dev jpeg-dev
# django-pyodbc-azureは以下のライブラリーが必要
RUN apk add --no-cache unixodbc-dev
# Geodjangoは以下のライブラリーが必要
RUN apk add --no-cache gdal-dev --repository http://nl.alpinelinux.org/alpine/edge/testing

RUN pip --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

RUN chmod +x /root/enterpoint.sh && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/root/enterpoint.sh"]
