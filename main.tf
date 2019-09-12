provider "aws" {
    Region = "{var.aws_region}"
}

#============== create an S3 bucket to store the state file in
resource "aws_s3_bucket" "terraform-remote-test" {
    bucket = "terraform-state-remote-test"
 
    versioning {
      enabled = true
    }
 
    lifecycle {
      prevent_destroy = true
    }
 
    tags {
      Name = "S3 Remote Terraform State Store"
    }      
}

#================ State File Backend ==================
terraform {
  backend "s3" {
    bucket = "terraform-state-remote-test"
    dynamodb_table = "terraform-state-lock-dynamo"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

#============= Create a Dynamodb table for locking the state file ============
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}