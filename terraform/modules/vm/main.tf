resource "azurerm_linux_virtual_machine" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.size
  admin_username      = var.admin_username
  admin_password      = var.admin_password

  network_interface_ids = var.network_interface_ids

  os_disk {
    caching        = "ReadWrite"
    create_option = "FromImage"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "20.04-LTS"
    version   = "latest"
  }

  # Provisioning script
  custom_data = base64encode(<<-EOT
              #!/bin/bash
              # Update package list and install required packages
              apt-get update
              apt-get install -y git

              # Install Docker
              apt-get install -y apt-transport-https ca-certificates curl software-properties-common
              curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
              add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
              apt-get update
              apt-get install -y docker-ce
              systemctl start docker
              systemctl enable docker

              # Install Jenkins
              echo "deb http://pkg.jenkins.io/debian-stable binary/" > /etc/apt/sources.list.d/jenkins.list
              curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -
              apt-get update
              apt-get install -y jenkins

              # Start Jenkins service
              systemctl start jenkins
              systemctl enable jenkins
            EOT
  )
}

variable "name" {}
variable "resource_group_name" {}
variable "location" {}
variable "size" {}
variable "admin_username" {}
variable "admin_password" {}
variable "network_interface_ids" {
  type = list(string)
}
