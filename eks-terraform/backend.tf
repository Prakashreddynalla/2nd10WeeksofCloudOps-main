terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "3-tier-project-123"
    key    = "eks/terraform.tfstate"
    region = "us-west-1"
  }

  required_version = ">= 1.6.3"
}
