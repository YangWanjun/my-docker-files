FROM python:3.10.8-alpine3.16
LABEL maintainer="ywjsailor@gmail.com"

WORKDIR /root

RUN apk update
# for mysql(mariadb-dev, gcc, libc-dev)
RUN apk add --no-cache mariadb-dev gcc libc-dev

# for psycopg2
RUN apk add postgresql-dev

# install requirements
ADD requirements.txt /root
RUN pip --no-cache-dir --trusted-host pypi.python.org install -r requirements.txt

EXPOSE 80
