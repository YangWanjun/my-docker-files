#!/bin/sh
if [[ ! -d /areaparking ]]; then
  mkdir /areaparking
  cd /areaparking
  git clone https://github.com/YangWanjun/areaparking.git ./

fi

cd /areaparking
git pull

#python manage.py migrate
#python manage.py runserver 0.0.0.0:80 --noreload
