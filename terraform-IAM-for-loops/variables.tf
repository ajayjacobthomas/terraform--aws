# variables.tf

variable "aws_region" {
  description = "The AWS region in which to deploy resources."
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to create."
  type        = string
}

variable "user_names" {
  description = "List of IAM user names to create."
  type        = list(string)
}
