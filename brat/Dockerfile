FROM centos:7

WORKDIR /root

ADD . /root

# common
RUN yum install -y less which net-tools sudo wget

# install apache2.4
RUN yum install -y httpd make
RUN yum install -y bzip2 bzip2-devel gcc gcc-c++ git make curl openssl-devel readline-devel zlib-devel patch file python-devel

# # exec.
CMD sh /root/init.sh

EXPOSE 8001