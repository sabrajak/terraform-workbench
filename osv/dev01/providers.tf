terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


#AWS configuration
provider "aws" {
  shared_config_files      = ["/Users/sabrajak/.aws/config"]
  shared_credentials_files = ["/Users/sabrajak/.aws/credentials"]
  profile                  = "dev01"
  region                   = "us-west-2"
}