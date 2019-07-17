#!/bin/bash

tar xzf resin-pro-4.0.61.tar.gz
cd /root/resin-pro-4.0.61

mkdir /imart
./configure --prefix=</imart> --enable-64bit
make
make install
