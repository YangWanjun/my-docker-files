## build
docker build -t yangwanjun/areaparking-ubuntu .

docker run -d --name areaparking --link mysql:mysql --link appayment:appayment -v /home/ec2-user/work/areaparking/static:/static yangwanjun/areaparking-ubuntu 
