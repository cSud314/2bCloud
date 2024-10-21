variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = list(string)
}

variable "public_ip_name" {
  description = "Name of the public IP"
  type        = string
}

variable "nic_name" {
  description = "Name of the network interface"
  type        = string
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "aks_vm_size" {
  description = "Size of the virtual machine"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}


variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "vm_size" {
  description = "Size of the AKS nodes"
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID"
  type        = string
}

variable "key_vault_name" {
  description = "Name of the Azure Key Vault"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}

variable "static_ip" {
  description = "Static IP for NGINX Ingress"
  type        = string
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "acr_sku" {
  description = "SKU for the Azure Container Registry"
  type        = string
  default     = "Basic"
}

variable "service_principal_id" {
  description = "Service principal ID for ACR role assignment"
  type        = string
}

variable "min_replicas" {
  description = "Min replicas for HPA"
  type        = number
  default     = "1"  # Default value can be customized
} 

variable "max_replicas" {
  description = "Max replicas for HPA"
  type        = number
  default     = "3"  # Default value can be customized
} 

variable "target_cpu_utilization" {
  description = "Target CPU utilization for HPA"
  type        = number
  default     = "70"  # Default value can be customized
} 

variable "redis_release_name" {
  description = "Name of the Helm release for Redis"
  type        = string
  default     = "redis"  # Default value can be customized
}

variable "redis_chart_name" {
  description = "Name of the Helm chart for Redis"
  type        = string
  default     = "bitnami/redis"  # Default value can be customized
}

variable "enable_redis_sentinel" {
  description = "Enable Redis Sentinel"
  type        = bool
  default     = true  # Change to false if you don't want Sentinel enabled
}
