terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "mc-test-dev-terraform-state"
    key    = "mc-test-dev-terraform.tfstate"
    dynamodb_table = "mc-dev-tf-statelock"
    region = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
}
