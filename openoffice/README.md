## build
docker build -t yangwanjun/openoffice:4.1.7 .
## run server
docker run -dit --name openoffice1 -p 9100:8100 yangwanjun/openoffice:4.1.7 /opt/openoffice.org3/program/soffice -headless -accept="socket,host=127.0.0.1,port=8100;urp;" -nofirststartwizard