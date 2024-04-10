resource "aws_instance" "ec2_example" {
  ami           = "ami-0f007bf1d5c770c6e"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform EC2 instance for output example"
  }
}

resource "aws_iam_user" "users" {
  for_each = toset(var.user_names)
  name     = each.value
}