provider "aws" {
  region = "ap-southeast-2"

  default_tags {
    tags = {
      Environment = "Prod"
      Managed_by  = "https://github.com/mr-nget-1/tf-aws-bunnn-cloud-resume/"
      Project = "AWS Cloud Resume Challenge"
    }
  }
}

terraform {
  required_version = ">= 1.0.0,< 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket  = "tf-aws-mr-nget-1-cloud-resume-challenge-prod.state"
    key     = "terraform.tfstate"
    region  = "ap-southeast-2"
    encrypt = true
    dynamodb_table = "terraform-state-lock"
  }
}