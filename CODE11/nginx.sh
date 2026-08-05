#!/bin/bash

# Install Nginx
dnf install nginx -y

# Start and enable Nginx
systemctl start nginx
systemctl enable nginx

# Deploy webpage
cat <<HTML > /usr/share/nginx/html/index.html
<html>
<body>
<h1>Nginx Deployed Using Terraform</h1>
<h2>Created by Safiatu Seidu</h2>
</body>
</html>
HTML