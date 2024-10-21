output "id" {
  value = azurerm_public_ip.this.ip_address
  description = "The public IP address of the Azure Public IP resource."
}
