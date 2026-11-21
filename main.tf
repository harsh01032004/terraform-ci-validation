resource "aws_s3_bucket" "demo" {
  bucket = "harsh01032004-ci-demo-bucket"

  tags = {
    Name        = "ci-demo"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "demo" {
  bucket = aws_s3_bucket.demo.id

  versioning_configuration {
    status = "Enabled"
  }
}
