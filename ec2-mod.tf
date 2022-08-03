
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "amit-s3-bucket-module"
  acl    = "private"

  versioning = {
    enabled = true
  }

}
  
variable "AWS_ACCESS_KEY_ID" {
  default = "AWS_ACCESS_KEY_ID"
}

variable "AWS_SECRET_ACCESS_KEY" {
  default = "AWS_SECRET_ACCESS_KEY"
}
  
