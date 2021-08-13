## build
```
docker build -t yangwanjun/brat .
```

## start server
```
docker run -d --restart=always --name brat -p 8001:8001 -v D:\backup\brat_data:/opt/brat yangwanjun/brat
```