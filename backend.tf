terraform {
  backend "s3" {
    bucket         = "terraform-bucket-state-file"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }
}

