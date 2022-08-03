
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

resource "aws_instance" "test-vm" {
  instance_type = "t2.micro"
  ami = "ami-0ff8a91507f77f867"
}

  
variable "AWS_ACCESS_KEY_ID" {
  default = "AWS_ACCESS_KEY_ID"
}

variable "AWS_SECRET_ACCESS_KEY" {
  default = "AWS_SECRET_ACCESS_KEY"
}
  
