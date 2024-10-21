variable "name" {
  description = "Name of the network interface"
  type        = string
}

variable "location" {
  description = "Location of the network interface"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the network interface will be created"
  type        = string
}

variable "ip_config_name" {
  description = "Name of the IP configuration"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet the network interface will be connected to"
  type        = string
}

variable "public_ip_address_id" {
  description = "ID of the public IP address"
  type        = string
}
