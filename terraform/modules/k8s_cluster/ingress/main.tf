resource "kubernetes_service" "nginx_ingress" {
  metadata {
    name      = "nginx-ingress"
    namespace = "kube-system"
    annotations = {
      "service.beta.kubernetes.io/azure-load-balancer-ip" = var.static_ip
    }
  }

  spec {
    selector = {
      app = "nginx-ingress"
    }
    port {
      port        = 80
      target_port = 80
    }
    port {
      port        = 443
      target_port = 443
    }
    type = "LoadBalancer"
  }
}
