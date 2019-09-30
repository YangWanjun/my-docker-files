#!/bin/bash

# download openoffice3.3.0
cd /root
cat /root/bin/OOo_3.3.0_Linux_x86-64_install-deb_ja.tar.gz.part* >openoffice.tar.gz
tar xvf openoffice.tar.gz
# install
cd OOO330_m20_native_packed-1_ja.9567/DEBS/
dpkg -i *.deb
update-alternatives --install /usr/bin/soffice soffice /opt/openoffice.org3/program/soffice 1
