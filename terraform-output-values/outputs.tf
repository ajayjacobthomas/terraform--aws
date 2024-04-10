output "instance_public_ip" {
  value       = aws_instance.ec2_example.public_ip
  description = "The public IP address of the EC2 instance."
}

output "private_ip" {
  value       = aws_instance.ec2_example.private_ip
  description = "The private IP address of the EC2 instance."
}