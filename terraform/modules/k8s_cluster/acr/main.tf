resource "azurerm_container_registry" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku

  admin_enabled = true
}

resource "azurerm_role_assignment" "acrpull" {
  principal_id   = var.service_principal_id
  role_definition_name = "AcrPull"
  scope           = azurerm_container_registry.this.id
}
