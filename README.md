# terraform-module-azurerm-virtualnetwork

## Usage

This module is used to deploy a single virtual network.

This virtual network supports custom address spaces, custom DNS servers and being linked to a standard SKU DDoS protection plan (Note that you have a limit of one plan per region (Azure limitation)).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| location | Location of the virtual network. | string | `""` | no |
| network\_ddos\_protection\_plan | Object containing bool about enabling ddos plan and ID of the ddos plan. | any | `[]` | no |
| resource\_group\_name | Resource group where the vnet resides. | string | n/a | yes |
| tags | Tags to add to the virtual network. | map | `{}` | no |
| vnet\_address\_space | The address space that is used by the virtual network | list(string) | `[ "10.0.0.0/8" ]` | no |
| vnet\_dns\_servers | List of IP addresses of DNS servers | list(string) | `[]` | no |
| vnet\_name | Name of the virtual network. | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| virtual\_network\_address\_space | Virtual network space |
| virtual\_network\_dns\_servers | Virtual network DNS Servers |
| virtual\_network\_id | Virtual network generated id |
| virtual\_network\_location | Virtual network location |
| virtual\_network\_name | Virtual network name |
| virtual\_network\_resource\_group\_name | Virtual network resource group name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Examples

Usage example is found in the `./examples/default/` folder.

## Inspec

No Inspec tests are done for this module.
