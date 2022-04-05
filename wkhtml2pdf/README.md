## build
docker build -t yangwanjun/wkhtml2pdf .

## Run Server
docker run -d --name wkhtml2pdf --restart=always -v /workspace/wkhtml2pdf:/opt/project -w /opt/project yangwanjun/wkhtml2pdf python3 app.py