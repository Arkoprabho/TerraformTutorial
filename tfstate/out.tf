# S3 Bucket related outputs
output "bucket_name" {
  value = aws_s3_bucket.state_bucket.id
}

output "bucket_arn" {
  value = aws_s3_bucket.state_bucket.arn
}

# Dynamodb related outputs
output "dynamodb_name" {
  value = aws_dynamodb_table.terraform_locks.id
}

output "dynamodb_arn" {
  value = aws_dynamodb_table.terraform_locks.arn
}
