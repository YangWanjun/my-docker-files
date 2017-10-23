#!/bin/sh
if [[ ! -d /areaparking ]]; then
  mkdir /areaparking
  cd /areaparking
  git clone https://github.com/YangWanjun/areaparking.git ./

fi

cd /ebusiness
git pull

python manage.py runserver 0.0.0.0:80
