# Author    : Ajay Thomas
# GitHub    : https://github.com/ajayjacobthomas/terraform-aws
########################################################

resource "aws_eip" "myeip" {
  //instance = aws_instance.web.id
  vpc = true
}