terraform {

backend "s3" {
    key            = "tf-infra/terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
  }
  
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

provider "aws" {
access_key = "AKIAXGBHF2NRWIZPXEFE"
secret_key = "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"
region = "eu-north-1"
}

module "tf-state" {
  source      = "./modules/tf-state"
  bucket_name = "kafka-dsti-s3-bucket"
}