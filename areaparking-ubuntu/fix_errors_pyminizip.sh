#!/bin/bash

tar -xzf /root/pyminizip-0.2.1.tar.gz
cd /root/pyminizip-0.2.1
sed -i '29i#include "zlib.h"' src/crypt.h
python3 setup.py install
rm -rf /root/pyminizip-0.2.1
rm /root/pyminizip-0.2.1.tar.gz