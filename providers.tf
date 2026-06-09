# this is copy and pasted from the registry, i simply just added in the region
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.47.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "eu-west-2"
}