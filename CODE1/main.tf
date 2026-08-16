provider "aws" {
  region = "us-east-1a"
}

resource "aws_iam_group" "developers" {
  name = "developers"
}

resource "aws_iam_user" "loadbalancer" {
  name = "loadbalancer"
}

resource "aws_iam_user" "administrator" {
  name = "Administrator"
}

resource "aws_iam_user" "manager" {
  name = "Manager"
}

resource "aws_iam_group" "database" {
  name = "Database"
}