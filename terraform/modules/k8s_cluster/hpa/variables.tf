variable "name" {
  description = "Name of the Horizontal Pod Autoscaler"
  type        = string
}

variable "namespace" {
  description = "Namespace for the HPA"
  type        = string
}

variable "deployment_name" {
  description = "Name of the deployment to scale"
  type        = string
}

variable "min_replicas" {
  description = "Minimum number of replicas"
  type        = number
  default     = 1
}

variable "max_replicas" {
  description = "Maximum number of replicas"
  type        = number
  default     = 10
}

variable "target_cpu_utilization" {
  description = "Target CPU utilization percentage"
  type        = number
  default     = 50
}
