provider "aws" {
  region  = "us-east-1"
  profile = "personal"
}

resource "random_string" "random_sixteen" {
  length  = var.random_string_length
  special = var.include_special
  upper   = var.include_upper
}

locals {
  bucket_name = "state-bucket-${random_string.random_sixteen.result}"
}

resource "aws_s3_bucket" "state_bucket" {
  bucket = local.bucket_name

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }

  # Enable versioning so we can see the full revision history of our
  # state files
  versioning {
    enabled = var.enable_versioning
  }

  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.encryption_algorithm
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-state-locks"
  billing_mode = var.billing_mode
  hash_key     = var.hash_key

  attribute {
    name = var.hash_key
    type = "S"
  }
}
