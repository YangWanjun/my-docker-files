## build
docker build -t yangwanjun/openoffice:4.1.6 .
## run server
docker run -d --name openoffice -p 8100:8100 yangwanjun/openoffice:4.1.6 soffice -accept="socket,port=8100;urp;StarOffice.ServiceManager" -invisible