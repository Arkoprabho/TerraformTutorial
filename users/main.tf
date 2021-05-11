provider "aws" {
  region  = "us-east-1"
  profile = "personal"
}

terraform {
  backend "s3" {}
}

resource "aws_iam_user" "dummy_user" {
  name = "dummy_user"
}