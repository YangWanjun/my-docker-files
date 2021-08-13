#!/bin/sh

if [ ! -d "/opt/brat" ]; then
  mkdir /opt/brat
fi

if [ ! -f "/opt/brat/standalone.py" ]; then
  mv /root/brat-1.3_Crunchy_Frog/* /opt/brat/
fi

# install mecab
cd /opt/brat/external && ./mecab.sh
cd /opt/brat && ./install_new.sh

rm -rf /root/*
python /opt/brat/standalone.py
