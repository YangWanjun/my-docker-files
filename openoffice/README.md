## build
docker build -t yangwanjun/openoffice:4.1.7 .
## run server
docker run -d --name openoffice -p 8100:8100 yangwanjun/openoffice:4.1.7
