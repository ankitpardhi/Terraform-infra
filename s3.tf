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

resource "aws_s3_bucket" "my_bucket" {
    bucket = "my-versioned-59434792323648623"
    tags = {
    Name = "VersionedBucket"

}

}