# Initialize Terraform
terraform {
  required_version = ">= 1.0"
  backend "local" {}  # Use a local backend for simplicity in this example
}

# Provider configuration
provider "aws" {
  region = "us-east-1"  # Update with your desired AWS region
}

# Create an S3 bucket for hosting the static website
resource "aws_s3_bucket" "website_bucket" {
  bucket = "my-website-bucket"  # Update with your desired bucket name
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}