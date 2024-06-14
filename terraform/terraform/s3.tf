resource "aws_s3_bucket" "bucket_dest" {
  bucket = var.dest_bucket_name

  versioning {
    enabled = false
  }

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "POST", "PUT", "DELETE", "HEAD"]
    allowed_origins = ["*"]
    expose_headers  = []
  }

  object_lock_enabled = false
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  bucket = aws_s3_bucket.bucket_dest.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket" "bucket_front" {
  bucket = var.front_bucket_name

  website {
    index_document = "index.html"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"  
      }
      bucket_key_enabled = true
    }
  }
}

resource "aws_s3_bucket_public_access_block" "bucket_front_public_access_block" {
  bucket = aws_s3_bucket.bucket_front.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.bucket_front.bucket
  key          = "index.html"
  source       = "../../index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "style_css" {
  bucket       = aws_s3_bucket.bucket_front.bucket
  key          = "style.css"
  source       = "../../style.css"
  content_type = "text/css"
}
