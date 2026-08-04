terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.56.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_lightsail_instance" "Linux" {
  name              = "Linux"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2023"
  bundle_id         = "nano_3_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
  key_pair_name     = "yum-key"
  tags = {
    Team        = "Network Team"
    Environment = "Dev"
    Created_by  = "Terraform"
  }
}