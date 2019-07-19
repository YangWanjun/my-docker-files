# build
docker build -t yangwanjun/intra-mart .
# apache server
docker run -d --name apache -p 8080:80 -p 443:443 -v /root/apache/httpd.conf:/usr/local/apache2/conf/httpd.conf httpd:alpine
# run 
docker run -d -it --name imart -p 6600:6600 -v /root/resin/resin.properties:/resin/conf/resin.properties yangwanjun/intra-mart