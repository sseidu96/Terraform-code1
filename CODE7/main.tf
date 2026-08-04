resource "aws_lightsail_instance" "Test" {
  name              = "Test-sever"
  availability_zone = "us-east-1b"
  blueprint_id      = "ubuntu_24_04"
  bundle_id         = "nano_3_0"
  key_pair_name     = "yum-key"
   user_data = file("file.sh")
  tags = {
    Team        = "prod"
    Environment = "Dev"
    Created_by  = "Terraform"
  }
}