resource "aws_instance" "first_ec2_Ireland" {
  ami           = "ami-0f007bf1d5c770c6e"
  instance_type = "var.instance_type"
  tags = {
    Name = "Terraform EC2"
  }
} 