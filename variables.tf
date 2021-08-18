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

variable "org_units" {
 description = "Organization Units and Children"
 type = list(object({
  main = string
  children = list(string)
 }))
}