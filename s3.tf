resource "aws_s3_bucket" "mybucket" {
  bucket = "terraform-ansible-bucket-1"

  tags = {
    Name        = "terraform-ansible-bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}
resource "aws_s3_bucket_cors_configuration" "example1" {
  bucket = aws_s3_bucket.mybucket.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["*"]
    expose_headers  = ["ETag"]
    max_age_seconds = 300000
  }

  cors_rule {
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
  }
}
