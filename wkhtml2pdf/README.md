## build
docker build -t yangwanjun/wkhtml2pdf .

## Run Server
docker run -d --name wkhtml2pdf --restart=always -v /workspace/wkhtml2pdf:/wkhtml2pdf yangwanjun/wkhtml2pdf python3 /wkhtml2pdf/app.py