# compile
docker build -t yangwanjun/webhook .

# start server
docker run -d --restart=always --name webhook \
    -v D:\workspace:/workspace \
    -v D:\workspace\webhook:/opt/project \
    -e FLASK_ENV=development \
    -w /opt/project \
    yangwanjun/webhook python -m flask run --host=0.0.0.0