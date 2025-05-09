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
  region = "{{.Args.region}}"
}

resource "aws_s3_bucket" "example" {
  bucket = "{{.Args.bucket_name}}"
  acl    = "private"

  tags = {
    Name        = "{{.Args.bucket_name}}"
    Environment = "{{.Args.environment}}"
  }
}
