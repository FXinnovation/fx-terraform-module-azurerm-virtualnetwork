output "virtual_network_id" {
  description = "Virtual network generated id"
  value       = azurerm_virtual_network.this[count.index].id
}

output "virtual_network_location" {
  description = "Virtual network location"
  value       = azurerm_virtual_network.this[count.index].location
}

output "virtual_network_name" {
  description = "Virtual network name"
  value       = azurerm_virtual_network.this[count.index].name
}

output "virtual_network_resource_group_name" {
  description = "Virtual network resource group name"
  value       = azurerm_virtual_network.this[count.index].resource_group_name
}

output "virtual_network_address_space" {
  description = "Virtual network space"
  value       = azurerm_virtual_network.this[count.index].address_space
}

output "virtual_network_dns_servers" {
  description = "Virtual network DNS Servers"
  value       = azurerm_virtual_network.this[count.index].dns_servers
}
