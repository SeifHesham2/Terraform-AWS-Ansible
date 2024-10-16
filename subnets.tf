resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet1_cidr_block
  availability_zone = "us-east-1a"
  tags = {
    Name = "Subnet1"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet2_cidr_block
  availability_zone = "us-east-1b"
  tags = {
    Name = "Subnet2"
  }
}
