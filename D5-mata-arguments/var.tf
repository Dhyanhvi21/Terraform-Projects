variable "environment" {
  default = "Dev"
}
variable "region" {
  default = "us-east-1"
}
# variable "instance_type" {
#   default = "t3.micro"
# }

variable "tags" {
  type = map(string)
  default = {
    Environment = "Dev"
    Name = "Dev-Instance"
    CreatedBy = "terraform"

  }
}

variable "bucket-name" {                 #A list is an ordered collection of values.
  type = list(string)                     #duplicates are allowed and order is preserved.
  default = [ "ketbuk-1","kebuk-2" ]
}

variable "bucket-name-set" {                 #A set is an unordered collection of unique values.
  type = set(string)                            #duplicates are not allowed.
  default = [ "ketbuk-3","kebuk-4" ]
}