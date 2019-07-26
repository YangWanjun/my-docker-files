# compile
docker build -t yangwanjun/scrapy:1.6.0 .
# dev server
docker run -it -d --name scrapy -v /workspace/:/workspace --link postgres:postgres yangwanjun/scrapy:1.6.0
