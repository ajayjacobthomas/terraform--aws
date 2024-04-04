resource "aws_instance" "ec2_example" {
  ami           = "ami-0f007bf1d5c770c6e"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform EC2"
  }
}