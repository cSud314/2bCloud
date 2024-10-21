resource "null_resource" "setup_kubectl" {
  provisioner "local-exec" {
    command = "az aks get-credentials --resource-group ${var.resource_group_name} --name ${var.cluster_name} --overwrite-existing"
  }

  triggers = {
    cluster_name            = var.cluster_name
    resource_group_name     = var.resource_group_name
  }
}
