# Author    : Ajay Thomas
# GitHub    : https://github.com/ajayjacobthomas/terraform-aws
########################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.20.1"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}