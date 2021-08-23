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
 type = list
}

// variable "org_subunits" {
//  description = "Organization Sub Units"
//  type = list(object({
//   name = string
//   child = string
//  }))
// }

// variable "org_accounts" {
//  description = "Organization accounts"
//  type = list(object({
//   name = string
//   email = string
//   unit = string
//   subunit = string
//  }))
// } 