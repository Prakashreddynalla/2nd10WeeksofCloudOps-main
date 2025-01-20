terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= v1.9.7"
    }
  }

  backend "s3" {
    bucket = "project3-tier"
    key    = "ec2/terraform.tfstate"
    region = "us-west-1"
  }

  required_version = ">= 1.10.4."
}
provider "aws" {
  region = "us-west-1"
}
