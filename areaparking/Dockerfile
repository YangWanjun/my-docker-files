FROM python:2.7.14-alpine3.6
LABEL maintainer="ywjsailor@gmail.com"

COPY enterpoint.sh /root/enterpoint.sh

RUN apk --no-cache add --update git make gcc g++ ca-certificates && \
    apk --no-cache add zlib-dev jpeg-dev tiff-dev freetype-dev lcms2-dev libwebp-dev tcl-dev tk-dev libxml2-dev libxslt-dev libffi-dev && \
    pip --no-cache-dir install django==1.11 && \
    pip --no-cache-dir install pillow && \
    pip --no-cache-dir install django-material && \
    chmod +x /root/enterpoint.sh && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/root/enterpoint.sh"]
