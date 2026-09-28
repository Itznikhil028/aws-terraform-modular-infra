terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "tf-state-modular-infra-d5c13a86"
    key            = "modular-infra/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "tf-state-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = terraform.workspace
      ManagedBy   = "Terraform"
      Project     = "CloudInfrastructure"
    }
  }
}
