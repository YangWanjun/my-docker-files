# compile
docker build -t yangwanjun/gis .
# start
docker run -it -d --name gis --link postgres:postgres -v /workspace/gis:/gis yangwanjun/gis
# geoserver
docker run --name geoserver -v /workspace/geoserver_data/data:/geoserver_data/data -it -d -p 8080:8080 geonode/geoserver
