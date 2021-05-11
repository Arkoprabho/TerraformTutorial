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
variable "prevent_destroy" {
  description = "Prevent accidental destruction of S3 bucket"
  default     = true
  type        = bool
}

variable "enable_versioning" {
  description = "Whether to enable versioning"
  type        = bool
}

variable "encryption_algorithm" {
  description = "The encryption algorithm to use"
  type        = string
}
