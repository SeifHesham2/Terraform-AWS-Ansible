resource "aws_dynamodb_table" "terraform_lock" {
  name           = var.dynamodb_table
  hash_key       = "LockID"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "TerraformLockTable"
  }
}
