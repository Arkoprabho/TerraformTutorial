provider "aws" {
  region = "us-east-1"
  profile = "personal"
}

resource "random_string" "random_sixteen" {
  length           = 16
  special          = false
  upper            = false
}
