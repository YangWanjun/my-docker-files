# compile
docker build -t yangwanjun/gis:flask .

# start server
docker run -d --restart=always \
    -v D:\workspace\gis_flask:/gis \
    -p 5000:5000 \
    -e POSTGRES_ENV_POSTGRES_USER=root \
    -e POSTGRES_ENV_POSTGRES_PASSWORD=5000 \
    -e POSTGRES_PORT_5432_TCP_ADDR=127.0.0.1 \
    -e POSTGRES_PORT_5432_TCP_PORT=5432 \
    -e POSTGRES_ENV_POSTGRES_DB=GIS \
    -e FLASK_APP=app/run.py \
    -e FLASK_ENV=development \
    -w /gis \
    yangwanjun/gis:flask python -m flask run --host=0.0.0.0