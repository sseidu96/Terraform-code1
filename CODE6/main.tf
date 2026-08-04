resource "aws_lightsail_instance" "example" {
  name              = "example"
  availability_zone = "us-east-1b"
  blueprint_id      = "ubuntu_24_04"
  bundle_id         = "nano_3_0"
  key_pair_name     = "httpd-key"
  tags = {
    Team        = "Test Team"
    Environment = "staging"
    Created_by  = "Terraform"
  }

  user_data = file("script.sh")
}