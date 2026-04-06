resource "aws_s3_bucket" "my-bucket-list" {
    bucket = var.bucket-name [count.index]
    count = 2
       
   tags = var.tags
}


resource "aws_s3_bucket" "my-bucket-set" {
    for_each = var.bucket-name-set
    bucket = each.value

    tags = var.tags
}