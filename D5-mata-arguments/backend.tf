terraform {

backend "s3" {
    bucket = "my-terraformm-state"
    key    = "Dev/terraform.tfstatefile"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}