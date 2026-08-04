resource "aws_lightsail_instance" "Linux" {
  name              = "Test-Server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2023"
  bundle_id         = "nano_3_0"
  user_data         = file("script.sh")
  key_pair_name     = "yum-key"
  tags = {
    Team        = "Test-Team"
    Environment = "staging"
    Created_by  = "Terraform"
  }
}