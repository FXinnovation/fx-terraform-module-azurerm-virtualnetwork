variable "resource_group_name" {
  description = "Resource group where the vnet resides."
  type        = string
}

variable "location" {
  description = "Location of the virtual network."
  type        = string
  default     = ""
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "The address space that is used by the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/8"]
}

variable "vnet_dns_servers" {
  description = "List of IP addresses of DNS servers"
  type        = list(string)
  default     = []
}

variable "network_ddos_protection_plan" {
  description = "Object containing bool about enabling ddos plan and ID of the ddos plan."
  type        = any
  default     = []
}

variable "tags" {
  description = "Tags to add to the virtual network."
  type        = map
  default     = {}
}
