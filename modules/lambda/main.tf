resource "aws_lambda_function" "this" {
  function_name = var.function_name          #Function Name Comes from variable.
  role          = var.role_arn               #iam role for lambda comes from iam module

  handler = var.handler
  runtime = var.runtime                      #programing language selection comes from variable

  filename         = var.filename            #file name which is present in root folder.
  source_code_hash = filebase64sha256(var.filename)
  memory_size = var.memory_size              #allocate memory size
  timeout     = var.timeout                  #set timeout to run function default 3 sec &  max 15 min

}