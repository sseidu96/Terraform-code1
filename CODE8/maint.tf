resource "aws_lightsail_instance" "web-Server" {
  name              = "Apache-Server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2023"
  bundle_id         = "nano_3_0"
  user_data         = file("install.sh")
  key_pair_name     = "yum-key"
  tags = {
    Team        = "Dev"
    Environment = "staging"
    Created_by  = "Terraform"
  }
}

resource "aws_lightsail_instance" "web-server1" {
  name              = "httpd"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2023"
  bundle_id         = "nano_3_0"
  user_data         = file("install.sh")
  key_pair_name     = "yum-key"
  tags = {
    Team        = "DevOps"
    Environment = "Dev"
    Created_by  = "Terraform"
  }
} 