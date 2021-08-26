resource "aws_iam_group_membership" "team" {
 count = length(var.users2groups)
 name = "${var.users2groups[count.index].group}-membership"

 users = var.users2groups[count.index].users

 group = var.users2groups[count.index].group
}