terraform {
  backend "s3" {
    bucket  = "terraform-backend-aj"
    key     = "global/s3/terraform.tfstate"
    region  = "eu-west-1"
    encrypt = true
  }
}
