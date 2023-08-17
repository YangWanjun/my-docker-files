#!/bin/bash

sed -i 's/max_length=1024/max_length=512/g' /usr/local/lib/python3.11/site-packages/django_cas_ng/migrations/0002_auto_20201023_1400.py
sed -i 's/max_length=1024/max_length=512/g' /usr/local/lib/python3.11/site-packages/django_cas_ng/migrations/0003_auto_20210813_1226.py
# 改行はLFでなければならない
