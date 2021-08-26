variable "users2groups" {
 description = "IAM users - groups association"
 type = list(object({
  users = list(string)
  group = string
 }))
}