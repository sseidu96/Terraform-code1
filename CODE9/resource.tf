resource "aws_lightsail_instance" "Linux" {

  name              = "Terraform-Lightsail-Server"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2023"
  bundle_id         = "nano_3_0"
  key_pair_name     = "sucess-key"
  user_data         = file("httpd.sh")
  tags = {
    Name        = "Terraform-Lightsail-Server"
    Environment = "staging"
    Created_by  = "Safiatu Terraform"
  }
}