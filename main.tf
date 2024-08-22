terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2-terraform1" {
  ami = "ami-066784287e358dad1"
  instance_type = "t2.small"
  tags = {
    Name = "ec2-terraform1"
  }
}

