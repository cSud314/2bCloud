output "name" {
  value = kubernetes_horizontal_pod_autoscaler.this.metadata[0].name
}
