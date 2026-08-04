resource "aws_lightsail_instance" "Splunk" {

  name              = "Splunk-Server"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2023"
  bundle_id         = "nano_3_0"
  key_pair_name     = "Splunk-key"
  user_data         = file("splunk.sh")

  tags = {
    Name        = "splunk-install"
    Environment = "Dev"
    Created_by  = "Terraform"
  }
}