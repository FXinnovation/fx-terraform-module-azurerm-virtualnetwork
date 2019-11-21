data "azurerm_resource_group" "netrg" {
  name = var.resource_group_name
}

local {
  location = var.vnet_location == "" ? data.azurerm_resource_group.netrg.location : var.vnet_location
}

resource "azurerm_virtual_network" "this" {
  resource_group_name = data.azurerm_resource_group.netrg.name
  location            = local.location
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  dns_servers         = var.vnet_dns_servers

  tags = merge(
    {
      "Terraform" = "true"
    },
    var.tags,
  )
}
