resource "null_resource" "external_dns" {
  provisioner "local-exec" {
    command = "kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/external-dns/master/docs/tutorials/azure.md"
  }
}
