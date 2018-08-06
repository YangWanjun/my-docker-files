#!/bin/sh
if [[ ! -d /areaparking ]]; then
  mkdir /areaparking
  cd /areaparking
  git clone https://git.e-business.co.jp/Areaparking/areaparking.git ./

fi

cd /areaparking
git pull

wkhtmltopdf https://www.google.co.jp /root/output.pdf
python manage.py runserver 0.0.0.0:80 --noreload
