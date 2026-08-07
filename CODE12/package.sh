 user_data = <<-EOF
              #!/bin/bash
              dnf update -y
              dnf install -y httpd

              systemctl enable httpd
              systemctl start httpd

              echo "<h1>Apache Installed Successfully with Terraform</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Terraform-HTTPD-Server"
  }
}