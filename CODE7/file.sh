user_data = <<-EOF
  #!/bin/bash

  adduser u5bbt
  groupadd Devops

  apt update -y
  apt install apache2 -y

  systemctl start apache2
  systemctl enable apache2

  echo "<h1>Deployed via Terraform</h1>" > /var/www/html/index.html
  echo "<h2>This was written by Safiatu Seidu</h2>" >> /var/www/html/index.html
EOF