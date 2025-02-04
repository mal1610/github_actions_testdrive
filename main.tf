provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "malcolm-tfstate"
    key    = "malcolm-tfstate"
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "example-malcolm-ce8" {
  bucket = "malcolm-github-actions-tf-test-bucket"
  force_destroy = true
}
