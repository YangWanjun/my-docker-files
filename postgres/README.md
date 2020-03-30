# build
docker build -t yangwanjun/postgis .
# 使用以下命令直接生成容器
docker run -d --name postgres -p 5432:5432 -e POSTGRES_DB=GIS -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root@2019 -v /workspace/postgres_data:/var/lib/postgresql/data yangwanjun/postgis
# TimeZone変更
psql -f 01.timezone.sql -U root -d GIS