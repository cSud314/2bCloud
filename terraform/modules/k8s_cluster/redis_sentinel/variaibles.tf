variable "release_name" {
  description = "Name of the Helm release"
  type        = string
  default     = "redis"
}

variable "chart_name" {
  description = "Name of the Helm chart"
  type        = string
  default     = "bitnami/redis"
}

variable "enable_sentinel" {
  description = "Enable Redis Sentinel"
  type        = bool
  default     = true
}
