variable "aws_region" {
  type        = string
  description = "AWS region where resources are created"
  default     = "ap-south-1"
}

variable "lambda_function_name" {
  type        = string
  description = "Name for the Lambda function"
  default     = "devops-lambda"
  validation {
    condition     = length(var.lambda_function_name) > 0
    error_message = "lambda_function_name must not be empty"
  }
}

variable "lambda_memory_size" {
  type        = number
  description = "Memory size for the Lambda function in MB"
  default     = 256
  validation {
    condition     = var.lambda_memory_size >= 128 && var.lambda_memory_size <= 10240
    error_message = "lambda_memory_size must be between 128 and 10240"
  }
}

variable "lambda_timeout" {
  type        = number
  description = "Timeout for the Lambda function in seconds"
  default     = 15
  validation {
    condition     = var.lambda_timeout >= 1 && var.lambda_timeout <= 900
    error_message = "lambda_timeout must be between 1 and 900 seconds"
  }
}

variable "lambda_handler" {
  type        = string
  description = "Lambda handler to invoke"
  default     = "app.lambda_handler"
}

variable "lambda_runtime" {
  type        = string
  description = "Lambda runtime version"
  default     = "python3.10"
}
