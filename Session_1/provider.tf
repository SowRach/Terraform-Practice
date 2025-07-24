terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.4.0"  # Its a AWS provider version not terraform
    }
  }
}

provider "aws" {
  region = "us-east-1"
}