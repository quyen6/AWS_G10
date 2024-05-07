#!/bin/bash
cat /etc/os-release # show cấu hình Linux OS
sudo yum update -y
sudo yum install httpd -y
sudo service httpd start
sudo systemctl enable httpd
sudo systemctl status httpd
# Cài git
sudo yum install git -y


cd /var/www/html

sudo git clone https://github.com/quyen6/AWS_G10.git

# dùng lệnh "sudo vi /etc/httpd/conf.d/" để  chỉnh sửa cấu hình đường dẫn
sudo systemctl restart httpd
sudo systemctl status httpd

 
