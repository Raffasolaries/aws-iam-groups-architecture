variable "region" {
 description = "AWS deployment region"
 type = string
 default = "eu-south-1"
}

variable "profile" {
 description = "AWS IAM user credentials to perform stack creation & update"
 type = string
}

variable "iam_groups" {
 description = "IAM User groups"
 type = list(object({
  name = string
  policies = list(string)
 }))
}

variable "iam_policies" {
 description = "IAM groups policies"
 type = list(object({
  name = string
  association = string
  policy = object({
   Version = string
   Statement = list(object({
    Sid = string
    Effect = string
    Action = list(string)
    Resource = string
   }))
  })
 }))
}

variable "users2groups" {
 description = "IAM users - groups association"
 type = list(object({
  users = list(string)
  group = string
 }))
}