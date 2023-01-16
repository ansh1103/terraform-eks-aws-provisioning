terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}   

provider "aws" {
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "asaikia"
  region = var.AWS_REGION
}

data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
}

provider "http" {
}