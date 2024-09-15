<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project_iam_custom_role.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_custom_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_role_description"></a> [custom\_role\_description](#input\_custom\_role\_description) | Description for the custom role created | `string` | `null` | no |
| <a name="input_custom_role_name"></a> [custom\_role\_name](#input\_custom\_role\_name) | Name for the custom role, should be lowercaps and only underscores allowed | `string` | n/a | yes |
| <a name="input_custom_role_title"></a> [custom\_role\_title](#input\_custom\_role\_title) | Title for the Role to be displayed on IAM page, defaults to role\_name | `string` | `null` | no |
| <a name="input_permissions"></a> [permissions](#input\_permissions) | List of permissions to be attached as part of the custom role | `list(string)` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | n/a |
<!-- END_TF_DOCS -->