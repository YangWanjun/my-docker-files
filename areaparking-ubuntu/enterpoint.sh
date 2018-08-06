#!/bin/bash
if [ ! -d /areaparking ]; then
  mkdir /areaparking
  cd /areaparking
  git clone https://git.e-business.co.jp/Areaparking/areaparking.git ./

fi

if [ ! -d /static ]; then
  mkdir /static

fi

cd /areaparking
git pull

python3 manage.py runserver 0.0.0.0:80 --noreload
