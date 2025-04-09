resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl          = var.acl
}

# Versioning configuration (must be a separate top-level resource)
resource "aws_s3_bucket_versioning" "my-s3-bucket-versioning" {
  bucket = aws_s3_bucket.my-s3-bucket.id
  
  versioning_configuration {
    status = "Enabled"  # or "Suspended" to disable
  }
}
