locals {
 association-list = flatten([
  for gk in range(length(var.iam_groups)) : [
   for p in var.iam_groups[gk].policies : {
    group = var.iam_groups[gk].name
    policy = p
   } if length(var.iam_groups[gk].policies) > 0
  ]
 ])
}
# Managed Policies attachment
resource "aws_iam_group_policy_attachment" "managed_policies" {
 count = length(local.association-list)
 group      = local.association-list[count.index].group
 policy_arn = local.association-list[count.index].policy

 depends_on = [aws_iam_group.groups]
}
# Custom policies
resource "aws_iam_policy" "policy" {
 count = length(var.iam_policies)
 name        = join("", [var.iam_policies[count.index].name, "Policy"])
 path        = "/${var.iam_policies[count.index].name}Policy/"
 description = var.iam_policies[count.index].name

 # Terraform's "jsonencode" function converts a
 # Terraform expression result to valid JSON syntax.
 policy = jsonencode(var.iam_policies[count.index].policy)
 depends_on = [aws_iam_group.groups]
}
# Custom Policies attachment
resource "aws_iam_group_policy_attachment" "custom_policies" {
 count = length(var.iam_policies)
 group      = var.iam_policies[count.index].association
 policy_arn = aws_iam_policy.policy[count.index].arn

 depends_on = [aws_iam_group.groups]
}