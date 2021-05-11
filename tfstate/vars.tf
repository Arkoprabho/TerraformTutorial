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
