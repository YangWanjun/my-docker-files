#!/bin/bash

tar xzf resin-pro-4.0.61.tar.gz
cd /root/resin-pro-4.0.61

mkdir /resin
./configure --prefix='/resin' --enable-64bit
make
make install