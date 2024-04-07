provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = "<= 1.8.6"
  required_providers {
    aws = {
      version = "<= 6.0.0"
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket         = "devsecopsb39tfstate"
    key            = "devsecopsb39-modules-new.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devsecopsb39-terraform-locks"
    encrypt        = true
  }
}
