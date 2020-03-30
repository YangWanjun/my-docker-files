# compile
docker build -t yangwanjun/gis .
# start
docker run -it -d --name gis --link postgres:postgres -v /workspace/gis:/gis yangwanjun/gis
docker run -d --name gis --link postgres:postgres -p 8004:80 -v /home/ec2-user/workspace/gis/:/gis yangwanjun/gis python /gis/manage.py runserver 0.0.0.0:80
# geoserver
docker run --name geoserver -v /workspace/geoserver_data/data:/geoserver_data/data -it -d -p 8080:8080 geonode/geoserver
