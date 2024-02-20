# Author    : Ajay Thomas
# GitHub    : https://github.com/ajayjacobthomas/terraform-aws
########################################################

# Create AWS VPC in eu-west-1
# CIDR - 10.0.0.0/16
resource "aws_vpc" "vpc-eu-west-1" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "VPC: set-on-eu-west-1"
  }
}