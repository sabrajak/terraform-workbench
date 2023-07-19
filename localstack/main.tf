terraform {
  required_providers {
    localstack = "~> 0.13.0"
  }
}
provider "localstack" {
  endpoint = "http://localhost:4566"
}

resource "localstack_s3_bucket" "my_bucket" {
  name = "my-bucket"
}

