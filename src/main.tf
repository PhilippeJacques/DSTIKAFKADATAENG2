terraform {
 


  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}



provider "aws" {
    region ="eu-north-1"
}

module "tf-state" {
  source      = "./modules/tf-state"
  bucket_name = "kafka-dsti-s3-bucket"
}