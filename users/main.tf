provider "aws" {
  region  = "us-east-1"
  profile = "personal"
}

terraform {
  backend "s3" {}
}

data "aws_iam_policy_document" "dummy_policy" {
  statement {
    sid = "DummyPolicyStatementID"
    actions = [
      "s3:*"
    ]
    resources = [
      "*"
    ]
    effect = "Allow"
  }
}

resource "aws_iam_user" "dummy_user" {
  name = "dummy_user"
}

resource "aws_iam_access_key" "dummy_access_key" {
  user    = aws_iam_user.dummy_user.name
  pgp_key = var.pgp_key
}

resource "aws_iam_user_policy" "dummy_policy" {
  name = "dummy_policy"
  user = aws_iam_user.dummy_user.name

  policy = data.aws_iam_policy_document.dummy_policy.json
}
