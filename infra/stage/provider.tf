terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "mc-stage-terraform-state"
    key    = "mc-stage-terraform.tfstate"
    dynamodb_table = "mc-stage-tf-statelock"
    region = "us-east-2"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
}