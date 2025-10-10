env                 = "prod"
location            = "eastus2"
resource_group_name = "nginx-prod-rg"

vnet_address_space  = ["10.10.0.0/16"]
subnet_prefixes     = ["10.10.1.0/24"]

vm_name             = "nginx-prod-vm"
vm_size             = "Standard_B2s"
admin_user          = "azureadmin"
admin_password      = "ProdPassword123!"
