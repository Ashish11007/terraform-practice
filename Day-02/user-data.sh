#!/bin/bash
sudo dnf update
sudo dnf install httpd -y
sudo systemctl enable httpd.service
sudo systemctl start httpd.service
sudo echo "<h1> Welcome To Terraform >/h1> " > /var/www/html/index.html
