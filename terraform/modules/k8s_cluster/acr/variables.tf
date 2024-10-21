variable "name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group for the ACR"
  type        = string
}

variable "location" {
  description = "Location for the ACR"
  type        = string
}

variable "sku" {
  description = "SKU for the ACR"
  type        = string
  default     = "Basic"
}

variable "service_principal_id" {
  description = "Service principal ID for role assignment"
  type        = string
}
