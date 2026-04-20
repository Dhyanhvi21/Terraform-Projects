resource "aws_s3_bucket" "my-s3" {
  bucket = "my-terra-bucket-8765"
  region = var.region

  tags = {
    Name = "${var.environment}-bucket"
    environment = var.environment
  }
}

resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/24"
  region = var.region
  tags = {
    environment = var.environment
    Name = "${var.environment}-vpc"
  }  
}

resource "aws_instance" "my-instance" {
   ami = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
   instance_type = var.instance_type
   region = var.region

  tags = {
    
    environment = var.environment
    Name = "${var.environment}-ec2-instance"
  }
}
