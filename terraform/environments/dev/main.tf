provider "azurerm" {
  features {}
}

# Resource Group
module "resource_group" {
  source  = "../../modules/resource_group"
  name    = var.resource_group_name
  location = var.location
}

# Virtual Network
module "virtual_network" {
  source = "../../modules/networking/virtual_network"
  name   = var.vnet_name
  address_space = var.vnet_address_space
  location = var.location
  resource_group_name = module.resource_group.name
}

# Subnet
module "subnet" {
  source = "../../modules/networking/subnet"
  name = var.subnet_name
  resource_group_name = module.resource_group.name
  virtual_network_name = module.virtual_network.name
  address_prefixes = var.subnet_address_prefix
}

# Public IP
module "public_ip" {
  source = "../../modules/networking/public_ip"
  name = var.public_ip_name
  location = var.location
  resource_group_name = module.resource_group.name
}

# Network Interface
module "network_interface" {
  source = "../../modules/networking/network_interface"
  name = var.nic_name
  location = var.location
  resource_group_name = module.resource_group.name
  ip_config_name = "2bcloud-ip-config"
  subnet_id = module.subnet.id
  public_ip_address_id = module.public_ip.id
}

# Security Group 
module "security_group" {
  source              = "../../modules/security_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  nsg_name            = "2bcloud-nsg"  # You can customize this name as needed
}

# Key Vault
module "key_vault" {
  source = "../../modules/key_vault"
  name = var.key_vault_name
  location = var.location
  resource_group_name = module.resource_group.name
  tenant_id = var.tenant_id
}

# Virtual Machine
module "virtual_machine" {
  source = "../../modules/vm"
  name = var.vm_name
  resource_group_name = module.resource_group.name
  location = var.location
  size = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
  network_interface_ids = [module.network_interface.id]
}

# AKS Cluster
module "aks" {
  source = "../../modules/k8s_cluster/aks"
  cluster_name = var.cluster_name
  resource_group_name = module.resource_group.name
  location = var.location
  dns_prefix = var.dns_prefix
  aks_vm_size = var.aks_vm_size
  vnet_subnet_id = module.subnet.id
  log_analytics_workspace_id = var.log_analytics_workspace_id
}

# Set up AKS context
module "aks_context" {
  source = "../../modules/k8s_cluster/aks_context"
  resource_group_name = module.resource_group.name
  cluster_name = module.aks.cluster_name
}

# Azure Container Registry
module "acr" {
  source = "../../modules/k8s_cluster/acr"
  name = var.acr_name
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  sku = var.acr_sku
  service_principal_id = var.service_principal_id
}

# NGINX Ingress
module "nginx_ingress" {
  source = "../../modules/k8s_cluster/ingress"
  static_ip = var.static_ip
}

# Cert Manager
module "cert_manager" {
  source = "../../modules/k8s_cluster/cert_manager"
}

# External DNS
module "external_dns" {
  source = "../../modules/k8s_cluster/external_dns"
}

# Horizontal Pod Autoscaler
module "hpa" {
  source = "../../modules/k8s_cluster/hpa"
  name = "hpa"
  namespace = "default"
  deployment_name = "hpa" # Replace with actual deployment name
  min_replicas = var.min_replicas
  max_replicas = var.max_replicas
  target_cpu_utilization = var.target_cpu_utilization
}

module "redis_sentinel" {
  source = "../../modules/k8s_cluster/redis_sentinel"

  release_name     = var.redis_release_name
  chart_name       = var.redis_chart_name
  enable_sentinel   = var.enable_redis_sentinel
}
