variable "name" {
  description = "Name of the public IP"
  type        = string
}

variable "location" {
  description = "Location of the public IP"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the public IP will be created"
  type        = string
}
