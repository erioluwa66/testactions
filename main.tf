provider "aws" {
  region = "us-west-2"
}
resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"


  tags = {
    Name = "Actions-test"
  }
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "Actions-test"
  }
}