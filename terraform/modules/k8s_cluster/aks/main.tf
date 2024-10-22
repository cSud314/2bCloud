resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  dns_prefix          = var.dns_prefix

  default_node_pool  {
    name          = "agentpool"
    node_count   = var.node_count
    vm_size      = var.aks_vm_size
    vnet_subnet_id = var.vnet_subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

}
