resource "aws_lambda_function" "my_lambda" {
  function_name = var.lambda_name
  role          = aws_iam_role.lambda_role.arn
  handler       = "index.handler"
  runtime       = "nodejs20.x"
  architectures = ["x86_64"]
  timeout       = 60
  memory_size   = 256
  ephemeral_storage {
    size = 512
  }

  environment {
    variables = {
      S3_BUCKET       = var.front_bucket_name
      S3_BUCKET_DEST  = var.dest_bucket_name
    }
  }

  filename         = "../../function.zip"
  source_code_hash = filebase64sha256("../../function.zip")
}

resource "aws_lambda_permission" "api_gateway" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.my_lambda.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.api.execution_arn}/*/*"
}

