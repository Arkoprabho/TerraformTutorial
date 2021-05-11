# Random resource variables
variable "random_string_length" {
  description = "Length of the random string"
  type        = number
  default     = 16
}

variable "include_special" {
  description = "Whether to include special characters in random string"
  type        = bool
}

variable "include_upper" {
  description = "Whether to include upper characters in random string"
  type        = bool
}

# S3 bucket variables
variable "enable_versioning" {
  description = "Whether to enable versioning"
  type        = bool
}

variable "encryption_algorithm" {
  description = "The encryption algorithm to use"
  type        = string
}

# DynamoDB variables
variable "billing_mode" {
  description = "Billing mode for the DynamoDB table"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "The hash key for the dynamodb table"
  type        = string
}
