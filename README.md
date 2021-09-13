<!-- BEGIN_TF_DOCS -->
# Account

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.57.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | 2.2.1 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 2.23.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.57.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 2.23.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_common"></a> [common](#module\_common) | github.com/global-devops-terraform/global-info | v0.49.0 |
| <a name="module_roles"></a> [roles](#module\_roles) | github.com/global-devops-terraform/user-roles | v1.23.0 |
| <a name="module_vault_root"></a> [vault\_root](#module\_vault\_root) | terraform-aws-modules/iam/aws//modules/iam-user | ~> 4.3.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_user_policy_attachment.vault_root_admin](https://registry.terraform.io/providers/hashicorp/aws/3.57.0/docs/resources/iam_user_policy_attachment) | resource |
| [aws_route53_record.delegation](https://registry.terraform.io/providers/hashicorp/aws/3.57.0/docs/resources/route53_record) | resource |
| [aws_route53_zone.org](https://registry.terraform.io/providers/hashicorp/aws/3.57.0/docs/resources/route53_zone) | resource |
| [vault_generic_secret.azuread](https://registry.terraform.io/providers/hashicorp/vault/2.23.0/docs/data-sources/generic_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_roles"></a> [additional\_roles](#input\_additional\_roles) | Additional roles | <pre>map(object({<br>    roles  = list(string)<br>    arns   = list(string)<br>    policy = string<br>  }))</pre> | `{}` | no |
| <a name="input_create_vault"></a> [create\_vault](#input\_create\_vault) | Create Vault IAM user | `bool` | `false` | no |
| <a name="input_delegation"></a> [delegation](#input\_delegation) | External delegation | `map(list(string))` | `{}` | no |
| <a name="input_deploy_dns"></a> [deploy\_dns](#input\_deploy\_dns) | Deploy DNS zone | `bool` | `false` | no |
| <a name="input_dev_groups"></a> [dev\_groups](#input\_dev\_groups) | List of developers role groups | `list(string)` | `[]` | no |
| <a name="input_dev_role_name"></a> [dev\_role\_name](#input\_dev\_role\_name) | Developer role name | `string` | `"Developer"` | no |
| <a name="input_dev_worker"></a> [dev\_worker](#input\_dev\_worker) | List of developers roles | `list(string)` | `[]` | no |
| <a name="input_devops_management"></a> [devops\_management](#input\_devops\_management) | List of DevOpsManagement users | `list(string)` | `[]` | no |
| <a name="input_external_zone"></a> [external\_zone](#input\_external\_zone) | External zone name | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_domain_name"></a> [external\_domain\_name](#output\_external\_domain\_name) | External DNS domain name |
| <a name="output_external_zone_id"></a> [external\_zone\_id](#output\_external\_zone\_id) | External DNS zone ID |
<!-- END_TF_DOCS -->
