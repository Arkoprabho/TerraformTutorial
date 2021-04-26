provider "aws" {
  region = "us-east-1"
  profile = "personal"
}

resource "random_string" "random_sixteen" {
  length           = 16
  special          = false
  upper            = false
}

resource "aws_s3_bucket" "state_bucket" {
  bucket = "state-bucket-${random_string.random_sixteen}"

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }

  # Enable versioning so we can see the full revision history of our
  # state files
  versioning {
    enabled = true
  }
}
