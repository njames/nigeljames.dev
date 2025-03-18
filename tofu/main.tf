provider "aws" {
  region = "ap-southeast-2"
}
resource "aws_s3_bucket" "site_nigeljames_dev" {
  bucket = "mybucket061981"
}
resource "aws_s3_bucket_versioning" "mybucket061981-versioning" {
  bucket = aws_s3_bucket.mybucket061981.bucket
  versioning_configuration {
    status = "Enabled"
  }
}
