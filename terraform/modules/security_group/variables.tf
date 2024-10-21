variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location for the Security Group"
  type        = string
}

variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "http_port" {
  description = "HTTP port to allow"
  type        = number
  default     = 80
}

variable "https_port" {
  description = "HTTPS port to allow"
  type        = number
  default     = 443
}
