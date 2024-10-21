output "service_ip" {
  value = kubernetes_service.nginx_ingress.status[0].load_balancer[0].ingress[0].ip
}
