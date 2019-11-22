data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

locals {
  location = var.location == "" ? data.azurerm_resource_group.rg.location : var.location
}

resource "azurerm_virtual_network" "this" {
  resource_group_name = data.azurerm_resource_group.rg.name
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
