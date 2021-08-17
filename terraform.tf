terraform {
 backend "s3" {
  bucket = "tantosvago-terraform-states"
  key    = "iam/tantosvago/terraform.tfstate"
  region = "eu-south-1"
 }
}