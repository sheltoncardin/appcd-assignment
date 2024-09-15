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
| [google_kms_crypto_key.this_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_crypto_key) | resource |
| [google_kms_key_ring.this_keyring](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/kms_key_ring) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_destroy_schedule_duration"></a> [destroy\_schedule\_duration](#input\_destroy\_schedule\_duration) | n/a | `number` | `30` | no |
| <a name="input_expire_after"></a> [expire\_after](#input\_expire\_after) | After how many days should the key expire, Defaults to 90 days | `string` | `"7776000s"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Name of the Key to be created | `string` | n/a | yes |
| <a name="input_key_ring_id"></a> [key\_ring\_id](#input\_key\_ring\_id) | Name of the key-ring to be created | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The GCP region. | `string` | `"global"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID of the GCP Project | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | n/a |
| <a name="output_key_ring_id"></a> [key\_ring\_id](#output\_key\_ring\_id) | n/a |
<!-- END_TF_DOCS -->