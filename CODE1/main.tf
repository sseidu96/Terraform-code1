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

resource "aws_iam_group" "developers" {
  name = "developers"
}


resource "aws_iam_user" "lb" {
  name = "loadbalancer"
}

resource "aws_iam_user" "Admin" {
  name = "Adminstrator"
}

resource "aws_iam_user" "Manager" {
  name = "Manager"
}

resource "aws_iam_group" "DB" {
  name = "Database"
}