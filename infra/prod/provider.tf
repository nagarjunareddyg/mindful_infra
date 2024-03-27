terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "mc-prod-terraform-state"
    key    = "mc-prod-terraform.tfstate"
    dynamodb_table = "mc-prod-tf-statelock"
    region = "us-west-1"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
}