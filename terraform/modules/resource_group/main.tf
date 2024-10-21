resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
}

variable "name" {}
variable "location" {}
