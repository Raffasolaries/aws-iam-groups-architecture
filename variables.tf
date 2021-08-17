variable "region" {
 description = "AWS deployment region"
 type = string
 default = "eu-south-1"
}

variable "profile" {
 description = "AWS IAM user credentials"
 type = string
}

variable "org_name" {
 description = "Organization Name"
 type = string
}