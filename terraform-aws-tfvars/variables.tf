# variable.tf 

variable "instance_type" {
   type = string
   description = "EC2 Instance Trials"
}

variable "tag" {
   type = string
   description = "Instance created by terraform"
}

# default value for the variable location
variable "location" {
   type = string
   description = "The project region"
   default = "eu-west-1"
}
