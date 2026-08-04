terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.57.1"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_lightsail_instance" "example" {
  name              = "example"
  availability_zone = "us-east-1b"
  blueprint_id      = "centos_7"
  bundle_id         = "nano_3_0"
  user_data = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
}