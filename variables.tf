variable "dynamodb_table" {
  default = "terraform-lock-table"
}
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}
variable "subnet1_cidr_block" {
  default = "10.0.0.0/17"
}
variable "subnet2_cidr_block" {
  default = "10.0.128.0/17"
}
variable "ami" {
  default = "ami-0866a3c8686eaeeba"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "ssh_key_name" {
  default     = "Ansible"
  description = "The name of the SSH key pair to use for EC2 instances"
  type        = string
}
