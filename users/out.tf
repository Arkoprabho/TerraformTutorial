output "password" {
  value = {
    key              = aws_iam_access_key.dummy_access_key.id
    encrypted_secret = aws_iam_access_key.dummy_access_key.encrypted_secret
  }
}
