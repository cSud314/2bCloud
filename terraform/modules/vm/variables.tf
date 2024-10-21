variable "name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the virtual machine will be created"
  type        = string
}

variable "location" {
  description = "Location of the virtual machine"
  type        = string
}

variable "size" {
  description = "Size of the virtual machine"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the virtual machine"
  type        = string
  sensitive   = true
}

variable "network_interface_ids" {
  description = "List of network interface IDs to associate with the virtual machine"
  type        = list(string)
}
