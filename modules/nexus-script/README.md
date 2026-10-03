## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nexus"></a> [nexus](#provider\_nexus) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nexus_script.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/script) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_content"></a> [content](#input\_content) | The content of this script. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the script. | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | The type of the script. | `string` | `"groovy"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_nexus"></a> [nexus](#provider\_nexus) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [nexus_script.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/script) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_content"></a> [content](#input\_content) | The content of this script. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the script. | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | The type of the script. | `string` | `"groovy"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |
<!-- END_TF_DOCS -->
