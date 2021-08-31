## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_group_membership.team](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_users2groups"></a> [users2groups](#input\_users2groups) | IAM users - groups association | <pre>list(object({<br>  users = list(string)<br>  group = string<br> }))</pre> | n/a | yes |

## Outputs

No outputs.