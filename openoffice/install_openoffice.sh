#!/bin/bash

# download openoffice4.1.7
cd /root
cat /root/bin/Apache_OpenOffice_4.1.7_Linux_x86-64_install-deb_ja.tar.gz.part* >openoffice.tar.gz
tar xvf openoffice.tar.gz
# install
cd ja/DEBS/
dpkg -i *.deb

# install langpack
cd /root
rm -rf ja/DEBS/
tar xvf /root/bin/Apache_OpenOffice_4.1.7_Linux_x86-64_langpack-deb_ja.tar.gz
cd ja/DEBS/
dpkg -i *.deb
