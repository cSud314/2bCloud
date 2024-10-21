resource "null_resource" "cert_manager" {
  provisioner "local-exec" {
    command = "kubectl apply -f https://github.com/jetstack/cert-manager/releases/latest/download/cert-manager.yaml"
  }
}
