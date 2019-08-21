## build
docker build -t yangwanjun/intra-mart:jdk1.7.0_45 .
## apache server
docker run -d --name apache -p 8080:80 -p 443:443 -v /root/apache/httpd.conf:/usr/local/apache2/conf/httpd.conf httpd:alpine
## database oracle11-xe
docker run -d -p 1521:1521 --name oracle11-xe --shm-size=1g -e ORACLE_PWD=***** -v /home/centos/workspace/oracle_data/:/u01/app/oracle/oradata yangwanjun/oracle:11.2.0.2-xe
## database oracle10-xe (同じHostの場合、portは1520にする)
docker run -d -p 1520:1521 --name oracle10-xe --mount source=oracle_xe_10g_vol,target=/usr/lib/oracle -e ORACLE_ALLOW_REMOTE=true --restart=always dragonbest520/oracle-xe-10g
## run 
docker run -d -it --name imart -p 6600:6600 -v /root/resin/resin.properties:/resin/conf/resin.properties --link oracle11-xe:oracle yangwanjun/intra-mart
