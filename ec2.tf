terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "new_ec2" {
  ami           = "ami-0a8b4cd432b1c3063" 
  instance_type = "t2.micro"
}
