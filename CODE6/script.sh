 user_data = <<-EOF
    #!/bin/bash
    sudo adduser jenkins
    sudo groupadd Admin
    apt update -y
    apt install apache2 -y
    systemctl start apache2
    systemctl enable apache2
    echo "<h1>Deployed via Terraform</h1>" > /var/www/html/index.html
  EOF