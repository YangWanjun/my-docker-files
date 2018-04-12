#!/bin/bash
if [ ! -d /areaparking ]; then
  mkdir /areaparking
  cd /areaparking
  git clone https://yangwanjun%40e-business.co.jp:ywjsailor@e-business.co.jp:3000/Areaparking/areaparking.git ./

fi

cd /areaparking
git pull

python3 manage.py runserver 0.0.0.0:80 --noreload
