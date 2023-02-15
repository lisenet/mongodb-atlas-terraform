terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.27.0"
    }
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.6.0"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

provider "mongodbatlas" {
  public_key  = var.mongo_atlas_api_public_key
  private_key = var.mongo_atlas_api_private_key
}
