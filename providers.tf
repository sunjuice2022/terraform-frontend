terraform {
  required_version = "~> 1.2.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  #   # tfstates file to s3 bucket
    # backend "s3" {
    #   bucket  = "linkdevapp-uat-s3-tfstate"
    #   key     = "terraform.tfstate"
    #   region  = "ap-southeast-2"
    #   encrypt = true
    # }
  #   # The backend block specifies where your state file is going to be stored
}

provider "aws" {
  region = "ap-southeast-2"
}

provider "aws" {
  alias  = "acm_provider"
  region = "us-east-1"
}
# is specifically for the SSL certificate. These need to be created in us-east-1 for Cloudfront to be able to use them.

# module "s3-bucket" {
#   source  = "terraform-aws-modules/s3-bucket/aws"
#   version = "3.4.0"
# }
