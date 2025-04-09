terraform {
  backend "s3" {
    bucket = "sample-bucket-batch-27"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table-1"
  }
}
