output "cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_admin_config
}

output "node_resource_group" {
  value = azurerm_kubernetes_cluster.aks.node_resource_group
}
