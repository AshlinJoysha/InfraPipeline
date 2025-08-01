terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.100.0"
    }
  }
  backend "s3" {
      bucket = "infraprojecttrial"
      key    = "evironment/qa/terraform.tf"
      region = "ap-southeast-1"
  }

}

provider "aws" {
    region = "ap-southeast-1"
    
}