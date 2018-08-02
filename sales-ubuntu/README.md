docker run -d --name sales --link mysql:mysql -v /home/ec2-user/build/eb_sales_files:/eb_sales_files yangwanjun/sales

docker run -d --name sales --link mysql:mysql -v /home/ec2-user/build/eb_sales_files:/eb_sales_files -v /home/ec2-user/work/sales/ebusiness:/ebusiness yangwanjun/sales-ubuntu python /ebusiness/manage.py runserver 0.0.0.0:80 --noreload

