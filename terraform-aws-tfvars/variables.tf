# variable.tf 

#String variable type
variable "instance_type" {
   type = string
   description = "EC2 Instance Trials"
   default = "t2.micro"
}

# Number variable type
variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 2
}

# default value for the variable location
variable "location" {
   type = string
   description = "The project region"
   default = "eu-west-1"
}

# Boolean variable type
variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
}

# List variable types
variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["vscode1", "vscode2", "vscode3"]
}

# Map variable type
variable "project_environment" {
  description = "project name and environment"
  type        = map(string)
  default     = {
    project     = "project-delta",
    environment = "dev"
  }
}
