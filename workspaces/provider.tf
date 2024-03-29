terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "sgpractice-dev"
    key = "mytfstate-dev"
    region = "us-east-1"
    dynamodb_table = "sgpractice-dev"
  }
}

provider "aws" {
    region = "us-east-1"
}