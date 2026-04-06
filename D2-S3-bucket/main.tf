terraform {

backend "s3" {
    bucket = "my-terraformm-state"
    key    = "Dev/terraform.tfstatefile"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

#Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# #creating S3 Buckets
resource "aws_s3_bucket" "my-s3" {
  bucket = "my-terra-bucket-8765"

  tags = {
    Name = "my-bucket"
    environment = "Dev" 
  }
}
