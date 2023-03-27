################################
## AWS Provider Module - Main ##
################################

# AWS Provider
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "your-organization"

    workspaces {
      name = "your-workspace-${var.app_environment}-ec2-${var.app_name}"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "default"
}
