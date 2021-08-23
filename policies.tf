# Main Policies attachment
resource "aws_iam_group_policy_attachment" "admin" {
 group      = aws_iam_group.groups[index(var.iam_groups[*], "Admin")].name
 policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
resource "aws_iam_group_policy_attachment" "billing" {
 group      = aws_iam_group.groups[index(var.iam_groups[*], "Billing")].name
 policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
}