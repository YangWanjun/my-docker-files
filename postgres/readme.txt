使用以下命令直接生成容器
docker run --name postgres -p 5432:5432 -e POSTGRES_USER=dev -e POSTGRES_PASSWORD=root -d postgres:9.6.5-alpine
