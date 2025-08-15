#terraform block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.9.0"
    }
  }
}

#provider block
provider "aws" {
  # Configuration options
  region = var.aws_region
}