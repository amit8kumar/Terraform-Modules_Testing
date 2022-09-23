
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

ata "aws_ami" "example" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "app-server"
    Tested = "true"
  }
}


resource "aws_instance" "app-dev" {
  ami           = data.aws_ami.example.id
  instance_type = "t2.small"

  ##This provides sequential name.
  tags = {
    Name = "tf_server-india"
  }

}


resource "aws_instance" "web-server" {
  provider      = aws.east
  ami           = "ami-0f397232a0bfdd89a"
  instance_type = "t2.micro"
  count         = 2

   ##This provides sequential name.
  tags = {
    Name = "web_server-${count.index}"
  }

}  

  
variable "AWS_ACCESS_KEY_ID" {
  default = "AWS_ACCESS_KEY_ID"
}

variable "AWS_SECRET_ACCESS_KEY" {
  default = "AWS_SECRET_ACCESS_KEY"
}
  
