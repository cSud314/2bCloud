variable "name" {
  description = "Name of the Azure Key Vault"
  type        = string
}

variable "location" {
  description = "Location of the Key Vault"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the Key Vault will be created"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}
