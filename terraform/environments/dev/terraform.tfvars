# Resource Group Variables
resource_group_name = "2bcloud-resource-group"
location            = "East US"

# Networking Variables
vnet_name           = "2bcloud-vnet"
vnet_address_space  = ["10.0.0.0/16"]
subnet_name         = "2bcloud-subnet"
subnet_address_prefix = ["10.0.1.0/24"]
public_ip_name      = "2bcloud-public-ip"
nic_name            = "2bcloud-nic"

# VM Variables
vm_name             = "2bcloud-vm"
vm_size             = "Standard_DS1_v2"
admin_username      = "adminuser"
admin_password      = "Password1234!"

# AKS Variables
cluster_name        = "2bcloudAKSCluster"
dns_prefix          = "2bcloudaks"
aks_vm_size         = "Standard_DS2_v2"
log_analytics_workspace_id = "2bcloud-log-analytics-workspace"
node_count          =   3

# ACR Variables
acr_name            = "2bcloudacrregistry"
acr_sku             = "Basic"
service_principal_id = "e87ff6df-8bcb-4555-8f90-193448864cbf"

# Key Vault Variables
key_vault_name      = "2bcloudKeyVault"
tenant_id           = "27c83813-916e-49fa-8d2a-d35332fc8ca4"

# NGINX Ingress Variables
static_ip           = "your-static-ip"