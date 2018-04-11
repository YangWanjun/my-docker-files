FROM python:3.6.4-alpine3.7
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

ADD . /root

RUN apk --no-cache add --update git py-mysqldb mysql-dev make gcc g++ musl-dev p7zip
# pillowは以下のライブラリーが必要
RUN apk --no-cache add zlib-dev jpeg-dev
# Geodjangoは以下のライブラリーが必要
RUN apk --no-cache add gdal-dev geos-dev --repository http://nl.alpinelinux.org/alpine/edge/testing
# wkhtmltopdf
# mesa-dri-swrastは「libEGL warning: DRI2: failed to open swrast」の対策
RUN apk --no-cache add xvfb ttf-freefont fontconfig dbus
RUN apk add qt5-qtbase-dev \
            wkhtmltopdf \
            mesa-dri-swrast \
            --no-cache \
            --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
            --allow-untrusted
# pythonのライブラリー
RUN pip --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

RUN chmod +x /root/enterpoint.sh && \
    chmod +x /root/fix_errors.sh && \
    chmod +x /root/fix_font.sh && \
    chmod +x /root/wkhtmltopdf.sh && \
    apk del gcc musl-dev mysql-dev && \
    ln -s /root/wkhtmltopdf.sh /usr/local/bin/wkhtmltopdf && \
    rm -rf /var/cache/apk/*

# エラー修正
RUN sh /root/fix_errors.sh && \
    sh /root/fix_font.sh

ENV DISPLAY :99

EXPOSE 80

ENTRYPOINT ["/root/enterpoint.sh"]
