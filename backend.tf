provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  required_version = ">= 1.0.0,< 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  # Normally you dont want your state file in your infrastructure.
  # You should normally separate your infrastructure and the objects that setup your infrastructure.
  # However we are just doing a demo/challenge.
  backend "s3" {
    bucket  = "tf-aws-mr-nget-1-cloud-resume.state"
    key     = "terraform.tfstate"
    region  = "ap-southeast-2"
    encrypt = true
    #dynamodb_tble = ""
    #role_arn = "arn:aws:iam::785157979237:role/GitHubAction-AssumeRoleWithAction"
  }
}

