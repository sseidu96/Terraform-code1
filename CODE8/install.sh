  user_data = <<-EOF
#!/bin/bash

# Install Apache
dnf install -y httpd

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Create group
groupadd cloud

# Create user and add to group
useradd -g cloud u6btt

# Create web page
cat <<HTML > /var/www/html/index.html
<html>
<body>
<h1>This is Safiatu Terraform Code</h1>
</body>
</html>
HTML

EOF

  tags = {
    Team        = "Cloud"
    Environment = "staging"
    Created_by  = "Terraform"
  }
}