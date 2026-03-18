# Optional remote backend configuration for production usage.
# Uncomment and configure once your S3 bucket + DynamoDB lock table exist.

# terraform {
#   backend "s3" {
#     bucket         = "<your-terraform-state-bucket>"
#     key            = "lambda-practice/terraform.tfstate"
#     region         = "ap-south-1"
#     dynamodb_table = "<your-terraform-lock-table>"
#     encrypt        = true
#   }
# }
