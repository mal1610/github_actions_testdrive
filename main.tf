provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"
}

terraform {
  backend "s3" {
    bucket = "example"
    key    = "malcolm-tfstate"
    region = "ap-southeast-1"
  }
}
