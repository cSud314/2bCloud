variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Amount Of Nodes"
  type        = string
}

variable "aks_vm_size" {
  description = "Size of the AKS nodes"
  type        = string
}

variable "vnet_subnet_id" {
  description = "ID of the subnet for the AKS cluster"
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "Log Analytics"
}