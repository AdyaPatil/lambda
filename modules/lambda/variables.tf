variable "function_name" {
  type        = string
  description = "Name of the Lambda function"
}

variable "role_arn" {
  type        = string
  description = "IAM Role ARN used by the Lambda function"
}

variable "handler" {
  type        = string
  description = "Lambda handler value (module path)."
  default     = "app.lambda_handler"
}

variable "runtime" {
  type        = string
  description = "Lambda runtime environment"
  default     = "python3.10"
}

variable "filename" {
  type        = string
  description = "Path to Lambda deployment package zip"
}

variable "memory_size" {
  type        = number
  description = "Memory size for Lambda (MB)."
  default     = 256
}

variable "timeout" {
  type        = number
  description = "Lambda function timeout (seconds)."
  default     = 15
}

