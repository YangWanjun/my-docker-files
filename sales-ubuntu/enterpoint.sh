#!/bin/sh
if [[ ! -d /ebusiness ]]; then
  mkdir /ebusiness
  cd /ebusiness
  git clone https://github.com/ebusiness/ebusiness.git ./

fi

cd /ebusiness

git pull

# settings

if [[ ! -d log ]]; then
  mkdir log
fi

if [[ ! -d log/batch ]]; then
  mkdir log/batch
fi

wkhtmltopdf https://www.google.co.jp /root/output.pdf

nohup python batch.py &
python manage.py runserver 0.0.0.0:80 --noreload
