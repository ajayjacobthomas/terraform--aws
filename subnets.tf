# Author    : Ajay Thomas
# GitHub    : https://github.com/ajayjacobthomas/terraform-aws
########################################################

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.vpc_cidr[count.index]
  availability_zone = var.az[count.index]
  count = 2

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-west-1"

  tags = {
    Name = "private-subnet3"
  }
}

data "aws_subnets" "sid" {
  filter {
    name   = "vpc-id"
    values = [aws_vpc.main.id]
  }

  tags = {
    Tier = "Public"
  }
}