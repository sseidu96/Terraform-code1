resource "aws_lightsail_instance" "nginx" {

  name              = "Nginx-Server"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2023"
  bundle_id         = "nano_3_0"
  key_pair_name     = "yum-key"

  user_data = file("nginx.sh")

  tags = {
    Name        = "Nginx-Web-Server"
    Environment = "Dev"
    Created_by  = "Terraform"
  }
}


resource "aws_lightsail_instance_public_ports" "nginx_ports" {

  instance_name = aws_lightsail_instance.nginx.name

  port_info {
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
  }

  port_info {
    protocol  = "tcp"
    from_port = 80
    to_port   = 80
  }
}