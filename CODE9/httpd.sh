#!/bin/bash

# Install Apache
dnf install -y httpd

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Create group
groupadd Admin

# Create user and add to group
useradd -G Admin u6btt

# Deploy webpage
cat <<HTML > /var/www/html/index.html
<html>
<body>
<h1>This is Safiatu Terraform Code</h1>
<h2>Apache deployed using Terraform on Lightsail</h2>
</body>
</html>
HTML