output "virtual_network_id" {
  description = "Virtual network generated id"
  value       = azurerm_virtual_network.this.id
}

output "virtual_network_location" {
  description = "Virtual network location"
  value       = azurerm_virtual_network.this.location
}

output "virtual_network_name" {
  description = "Virtual network name"
  value       = azurerm_virtual_network.this.name
}

output "virtual_network_resource_group_name" {
  description = "Virtual network resource group name"
  value       = azurerm_virtual_network.this.resource_group_name
}

output "virtual_network_address_space" {
  description = "Virtual network space"
  value       = azurerm_virtual_network.this.address_space
}

output "virtual_network_dns_servers" {
  description = "Virtual network DNS Servers"
  value       = azurerm_virtual_network.this.dns_servers
}
