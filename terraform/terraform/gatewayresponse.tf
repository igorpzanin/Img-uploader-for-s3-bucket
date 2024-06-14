resource "aws_api_gateway_gateway_response" "default_4xx" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "DEFAULT_4XX"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "default_5xx" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "DEFAULT_5XX"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "access_denied" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "ACCESS_DENIED"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "api_configuration_error" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "API_CONFIGURATION_ERROR"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "authorizer_configuration_error" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "AUTHORIZER_CONFIGURATION_ERROR"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "authorizer_failure" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "AUTHORIZER_FAILURE"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "bad_request_body" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "BAD_REQUEST_BODY"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "bad_request_parameters" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "BAD_REQUEST_PARAMETERS"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "expired_token" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "EXPIRED_TOKEN"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "integration_failure" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "INTEGRATION_FAILURE"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "integration_timeout" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "INTEGRATION_TIMEOUT"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "invalid_api_key" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "INVALID_API_KEY"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "invalid_signature" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "INVALID_SIGNATURE"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "missing_authentication_token" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "MISSING_AUTHENTICATION_TOKEN"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "quota_exceeded" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "QUOTA_EXCEEDED"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "request_too_large" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "REQUEST_TOO_LARGE"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "resource_not_found" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "RESOURCE_NOT_FOUND"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "throttled" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "THROTTLED"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "unauthorized" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "UNAUTHORIZED"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "unsupported_media_type" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "UNSUPPORTED_MEDIA_TYPE"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}

resource "aws_api_gateway_gateway_response" "waf_filtered" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  response_type = "WAF_FILTERED"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'"
    "gatewayresponse.header.Access-Control-Allow-Methods" = "'OPTIONS,POST'"
    "gatewayresponse.header.Access-Control-Allow-Origin"  = "'http://front-bucket1337.s3-website-us-east-1.amazonaws.com'"
  }

  response_templates = {
    "application/json" = "{\"message\":\"$context.error.messageString\"}"
  }
}
