terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "terraEC2" {
  ami           = "ami-0d176f79571d18a8f"
  instance_type = "t2.micro"
  tags = {
    Name = "terraKey"
  }

}