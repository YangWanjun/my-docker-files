FROM python:3.6.4-alpine3.7
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apk --no-cache add --update git py-mysqldb mysql-dev make gcc g++ musl-dev
# pillowは以下のライブラリーが必要
RUN apk --no-cache add zlib-dev jpeg-dev
# Geodjangoは以下のライブラリーが必要
RUN apk add --no-cache gdal-dev geos-dev --repository http://nl.alpinelinux.org/alpine/edge/testing
# wkhtmltopdf
RUN apk add --no-cache xvfb ttf-freefont fontconfig dbus \
RUN apk add qt5-qtbase-dev \
            wkhtmltopdf \
            --no-cache \
            --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
            --allow-untrusted
# pythonのライブラリー
RUN pip --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

RUN chmod +x /root/enterpoint.sh && \
    chmod +x /root/fix_errors.sh && \
    apk del gcc musl-dev mysql-dev && \
    rm -rf /var/cache/apk/*

# エラー修正
RUN sh /root/fix_errors.sh

EXPOSE 80

CMD Xvfb :99 -screen 0 1920x1200x24

ENTRYPOINT ["/root/enterpoint.sh"]
