module "iam" {
  source = "./modules/iam"
  name   = var.lambda_function_name
}

module "lambda" {
  source = "./modules/lambda"

  function_name = var.lambda_function_name
  role_arn      = module.iam.role_arn

  handler     = var.lambda_handler
  runtime     = var.lambda_runtime
  filename    = "lambda.zip"
  memory_size = var.lambda_memory_size
  timeout     = var.lambda_timeout
}