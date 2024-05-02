terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.47.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_s3_bucket" "lus-dev-tfstate" {
  bucket = "lus-dev-apne2-tfstate-begginer"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.lus-dev-tfstate.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-lock-begginer"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }	
}
