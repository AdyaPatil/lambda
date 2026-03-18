variable "name" {
  type        = string
  description = "Prefix for resources created by iam module"
  validation {
    condition     = length(var.name) > 0
    error_message = "name must not be empty"
  }
}