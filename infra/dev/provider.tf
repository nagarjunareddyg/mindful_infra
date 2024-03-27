terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "mc-dev-terraform-state"
    key    = "mc-dev-terraform.tfstate"
    dynamodb_table = "mc-dev-tf-statelock"
    region = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
}