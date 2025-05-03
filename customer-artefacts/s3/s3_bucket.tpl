terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "${var.region}"
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_name}"
  acl    = "private"

  tags = {
    Name        = "${var.bucket_name}"
    Environment = "${var.environment}"
  }
}