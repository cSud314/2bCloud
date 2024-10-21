resource "null_resource" "redis_sentinel" {
  provisioner "local-exec" {
    command = <<EOT
    helm repo add bitnami https://charts.bitnami.com/bitnami
    helm install ${var.release_name} ${var.chart_name} --set sentinel.enabled=${var.enable_sentinel}
    EOT
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}
