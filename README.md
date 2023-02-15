# terraform-azure-dns-zone
* Creates a primary or sub DNS zone

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_dns_zone.zone](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_zone) | resource |
| [azurerm_resource_group.dns](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_resource_group.dns](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | The zone name to create.<br>For a primary zone use the full domain name i.e. verituityplatform.com<br>For a sub zone use just the sub domain name i.e. dev for dev.verituityplatform.com | `string` | n/a | yes |
| <a name="input_existing_resource_group_name"></a> [existing\_resource\_group\_name](#input\_existing\_resource\_group\_name) | (Optional) The existing resource group name that the DNS zone resides in. Will negate var.resource\_group\_name. | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Location for the resource group, required if creating a resource group | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Standard tags to apply to resources | `map` | `{}` | no |
| <a name="input_tags_extra"></a> [tags\_extra](#input\_tags\_extra) | Extra tags to apply to resources | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name_servers_for_delegation"></a> [name\_servers\_for\_delegation](#output\_name\_servers\_for\_delegation) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
<!-- END_TF_DOCS -->
