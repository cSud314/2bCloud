terraform {
  backend "azurerm" {
    resource_group_name  = "guylurie-candidate-rg-backend"  # Name of the resource group
    storage_account_name = "gl-candidate-sg"    # Name of the Azure Storage account
    container_name       = "terraform-locks"    # Name of the Blob container
    key                  = "terraform.tfstate"      # Name of the state file
  }
}
