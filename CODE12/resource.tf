resource "aws_instance" "httpd_server" {
  ami                    = "ami-0bdc7d025135d7b49"
  instance_type          = "t2.micro"
  key_name               = "Admin-key.pem"
  vpc_security_group_ids = [aws_security_group.httpd_sg.id]

  user_data = file("package.sh")

  tags = {
    Name = "Terraform-HTTPD-Server"
  }
}