resource "aws_s3_bucket" "demo" {
  bucket = "harsh01032004-ci-demo-bucket"

  tags = {
    Name        = "ci-demo"
    Environment = "dev"
  }
}
