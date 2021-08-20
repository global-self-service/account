# Account

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| additional\_roles | Additional roles | object | `{}` | no |
| create\_vault | Create Vault IAM user | bool | `"false"` | no |
| delegation | External delegation | map(list(string)) | `{}` | no |
| deploy\_dns | Deploy DNS zone | bool | `"false"` | no |
| dev\_groups | List of developers role groups | list(string) | `[]` | no |
| dev\_role\_name | Developer role name | string | `"Developer"` | no |
| dev\_worker | List of developers roles | list(string) | `[]` | no |
| devops\_management | List of DevOpsManagement users | list(string) | `[]` | no |
| external\_zone | External zone name | string | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| external\_domain\_name | External DNS domain name |
| external\_zone\_id | External DNS zone ID |
