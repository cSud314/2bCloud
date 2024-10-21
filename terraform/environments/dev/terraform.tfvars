# Resource Group Variables
resource_group_name = "example-resource-group"
location            = "East US"

# Networking Variables
vnet_name           = "example-vnet"
vnet_address_space  = ["10.0.0.0/16"]
subnet_name         = "example-subnet"
subnet_address_prefix = ["10.0.1.0/24"]
public_ip_name      = "example-public-ip"
nic_name            = "example-nic"

# VM Variables
vm_name             = "example-vm"
vm_size             = "Standard_DS1_v2"
admin_username      = "adminuser"
admin_password      = "Password1234!"  # Ensure this meets Azure's complexity requirements

# AKS Variables
cluster_name        = "myAKSCluster"
dns_prefix          = "myaks"
vm_size             = "Standard_DS2_v2"
log_analytics_workspace_id = "your-log-analytics-workspace-id"

# ACR Variables
acr_name            = "myacrregistry"
acr_sku             = "Basic"
service_principal_id = "your-service-principal-id"

# Key Vault Variables
key_vault_name      = "myKeyVault"
tenant_id           = "your-tenant-id"

# NGINX Ingress Variables
static_ip           = "your-static-ip"