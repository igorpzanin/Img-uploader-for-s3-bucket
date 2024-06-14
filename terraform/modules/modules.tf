module "front-s3-upload" {
  source         = "../terraform"

  front_bucket_name = "front-bucket1337"
  dest_bucket_name = "dest-bucket312"
  lambda_name = "lambda-s3-function"

  api_name = "example-api"
  api_stage_name = "prod"
}