

# Declare local variable
locals {
  env_name = "Dev"
}

# Define VPC - note the local variable defined
resource "aws_vpc" "custom-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "${local.env_name}-vpc-tag"
  }
}

## Before using local variables
#resource "aws_vpc" "custom-vpc" {
#  cidr_block = "10.0.0.0/16"

#  tags = {
#    Name = "Dev-VPC-tag"
#  }
#}

# Define Subnet - note the local variable defined
resource "aws_subnet" "dev_subnet1" {
  vpc_id     = aws_vpc.custom-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "${local.env_name}-vpc-tag"
  }
}

#Before using local variables
#resource "aws_subnet" "dev_subnet1" {
#  vpc_id = aws_vpc.custom-vpc.id
#  cidr_block = "10.0.1.0/24"

#  tags = {
#    Name = "Dev-VPC-tag"
#  }
#}


# Define Subnet - note the local variable defined
resource "aws_subnet" "dev_subnet2" {
  vpc_id     = aws_vpc.custom-vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "${local.env_name}-vpc-tag"
  }
}

# Define VM
resource "aws_instance" "first_ec2_Ireland" {
  ami                         = "ami-0f007bf1d5c770c6e"
  instance_type               = var.instance_type
  count                       = var.instance_count
  associate_public_ip_address = var.enable_public_ip
  tags                        = var.project_environment
}