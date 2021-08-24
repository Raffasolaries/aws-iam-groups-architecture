variable "region" {
 description = "AWS deployment region"
 type = string
 default = "eu-south-1"
}

variable "profile" {
 description = "AWS IAM user credentials"
 type = string
}

variable "iam_groups" {
 description = "AWS User groups"
 type = list(object({
  name = string
  policies = list(string)
 }))
}

variable "iam_policies" {
 description = "AWS User groups"
 type = list(object({
  name = string
  association = string
  policy = any
 }))
}