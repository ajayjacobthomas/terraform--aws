resource "aws_instance" "ec2_example" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform EC2"
  }
}