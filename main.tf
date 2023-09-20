provider "aws" {
  region = "us-east-2"
}
resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"


  tags = {
    Name = "Actions-test"
  }
}

resource "aws_subnet" "Subnet" {
  vpc_id            = aws_vpc.subnet
  cidr_block        = "10.0.0.0/24" # Adjust the CIDR block for your subnet
  availability_zone = "us-east-2a"  # Adjust the availability zone as needed

  tags = {
    name = "Subnet1"
  }
}
