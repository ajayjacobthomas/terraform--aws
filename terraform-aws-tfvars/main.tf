resource "aws_instance" "first_ec2_Ireland" {
  ami                         = "ami-0f007bf1d5c770c6e"
  instance_type               = var.instance_type
  count                       = var.instance_count
  associate_public_ip_address = var.enable_public_ip
  tags                        = var.project_environment
}

# Create IAM users
resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}