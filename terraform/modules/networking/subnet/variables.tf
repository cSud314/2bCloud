variable "name" {
  description = "Name of the subnet"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the subnet will be created"
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the virtual network the subnet will be part of"
  type        = string
}

variable "address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
}
