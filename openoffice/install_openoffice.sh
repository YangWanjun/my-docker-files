#!/bin/bash

# download openoffice3.3.0
cd /root
cat /root/bin/Apache_OpenOffice_4.1.7_Linux_x86-64_install-deb_ja.tar.gz.part* >openoffice.tar.gz
tar xvf openoffice.tar.gz
# install
cd ja/DEBS/
dpkg -i *.deb
update-alternatives --install /usr/bin/soffice soffice /opt/openoffice.org3/program/soffice 1
