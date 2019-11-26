#####
# Datasources
#####

data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

#####
# Locals
#####

locals {
  location = var.location == "" ? data.azurerm_resource_group.rg.location : var.location
}

#####
# Resources
#####

resource "azurerm_virtual_network" "this" {
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = local.location
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  dns_servers         = var.vnet_dns_servers

  dynamic "ddos_protection_plan" {
    for_each = var.network_ddos_protection_plan
    content {
      id     = lookup(ddos_protection_plan.value, "id", null)
      enable = lookup(ddos_protection_plan.value, "enable", false)
    }
  }

  tags = merge(
    {
      "Terraform" = "true"
    },
    var.tags,
  )
}
