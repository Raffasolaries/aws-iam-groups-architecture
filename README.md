## Requirements

- [AWS-Credentials](https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/setup-credentials.html)
- [AWS-cli](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

#### Commands

Initialize Terraform project

```bash
terraform init
```

Planning deployment -> gives you the summary of resources that will be modified

```bash
terraform plan
```

Deploy all resources (use --auto-approve arg if you don't need confirmation)


```bash
terraform apply [--auto-approve]
```

You can apply on specific targets: modules or resources inside modules
Example:

```bash
terraform apply [-target=module.association.aws_iam_group_membership.team]
```

#### Variables structure

**profile**
actual local profile used to plan and deploy AWS stacks. In unix often is the main one, which is named *default*

**iam_policies** represents the group custom policies array. It refers to policy name *name*, group name *association*, actual json policy with custom aws services actions.

**iam_groups** represents the actual IAM groups list. *name* is the group name and *policies* are the list of AWS Managed policies which are associated to that group (a single group could have multiple policies attached with a mixture of managed and custom policies).

**users2groups** actual users to groups association. Each group could have multiple users attached to it. *users* is the users name array, *group* is the name of the group to which attach users 


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.55.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_association"></a> [association](#module\_association) | ./modules/users2groups | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_group.groups](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_policy_attachment.custom_policies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_group_policy_attachment.managed_policies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_policy.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_iam_groups"></a> [iam\_groups](#input\_iam\_groups) | IAM User groups | <pre>list(object({<br>  name = string<br>  policies = list(string)<br> }))</pre> | n/a | yes |
| <a name="input_iam_policies"></a> [iam\_policies](#input\_iam\_policies) | IAM groups policies | <pre>list(object({<br>  name = string<br>  association = string<br>  policy = any<br> }))</pre> | n/a | yes |
| <a name="input_profile"></a> [profile](#input\_profile) | AWS IAM user credentials to perform stack creation & update | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS deployment region | `string` | `"eu-south-1"` | no |
| <a name="input_users2groups"></a> [users2groups](#input\_users2groups) | IAM users - groups association | <pre>list(object({<br>  users = list(string)<br>  group = string<br> }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_groups"></a> [groups](#output\_groups) | IAM created Groups |