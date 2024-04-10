This is a working example on how to use output in terraform. refer the contetnts in the putputs.tf file.

There are certain scenarios  where you need to use terraform output for multiple resources using count. To achieve this you do not need to loop inside the terraform output block. See an example below - 

resource "aws_instance" "ec2_example" {
  count = 3
    ami = "ami-0f007bf1d5c770c6e"
      instance_type = "t2.micro"
        tags = {
            Name = "test-t2-micro"
              }
}

Output Block will look like this below - 
output "public_ip_aws" {
   value = ["${aws_instance.ec2_example.*.public_dns}"]
   }

output "private_ip_aws" {
   value = ["${aws_instance.ec2_example.*.private_dns}"]
   }   

user "sensitive = true" inside the output block to hide sensitive details being printed. 

The 'nonsensitive' function can be used to mark an output variable as sensitive, meaning, its value will be obscured in the output of the terraform output command. This can be useful for sensitive information like passwords or private keys.
This function can be used to mark an output variable as non-sensitive as well, which means that its value will be displayed in plain text in the output of the terraform output command. See an example below - 

resource "aws_iam_access_key" "iam_example" {
  user = aws_iam_user.iam_example.name
}

output "access_key" {
  value = nonsensitive(aws_iam_access_key.example.id)
}

Here, the aws_iam_access_key resource is being created and the output variable access_key is being set to the ID of the access key. The 'nonsensitive' function is used to mark the output variable as non-sensitive.