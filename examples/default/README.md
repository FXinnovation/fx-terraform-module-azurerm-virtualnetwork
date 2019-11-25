# terraform-example

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| location | Location of the resources. | string | `""` | no |
| network\_security\_groups\_config | Object containing deployment information for network security groups. | any | `{ "nsg1": [ { "name": "nsg-1", "security_rule": [ { "access": "Allow", "description": "My Test 1", "destination_address_prefix": "*", "destination_port_range": "*", "direction": "Outbound", "name": "test1", "priority": 101, "protocol": "Tcp", "source_address_prefix": "*", "source_port_range": "*" } ] } ] }` | no |
| resource\_group\_name | Resource group where the vnet resides. | string | n/a | yes |
| route\_tables\_config | Object containing deployment information for route tables. | any | n/a | yes |
| subnets\_config | Object containing deployment information for subnets. | any | `{ "subnet1": [ { "address_prefix": "10.0.1.0/24", "name": "subnet1", "service_endpoints": [ "Microsoft.Sql", "Microsoft.Storage" ] } ], "subnet2": [ { "address_prefix": "10.0.2.0/24", "name": "subnet2" } ] }` | no |
| tags | Tags to add to the virtual network. | map | `{}` | no |
| vnet\_address\_space | The address space that is used by the virtual network | list(string) | `[ "10.0.0.0/8" ]` | no |
| vnet\_dns\_servers | List of IP addresses of DNS servers | list(string) | `[]` | no |
| vnet\_name | Name of the virtual network. | string | n/a | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
