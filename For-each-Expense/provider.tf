terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.3.0"
    }
  }
  backend "s3" {
    bucket = "78s-kedar-my-bucket"
    key    = "expense-for-each-loop"
    region = "us-east-1"
    dynamodb_table = "78skedar-remote-locking"
    
  }
}


provider "aws" {
  region = "us-east-1"
}
