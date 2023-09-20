provider "aws" {
  region = "us-east-2"
}
resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"


  tags = {
    Name = "Actions-test"
  }
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "Actions-test"
  }
}