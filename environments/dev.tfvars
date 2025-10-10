env                 = "dev"
location            = "eastasia"
# resource_group_name = "nginx-dev-rg"
resource_group_name = "nginx-dev-rg"

vnet_address_space  = ["10.0.0.0/16"]
subnet_prefixes     = ["10.0.1.0/24"]

vm_name             = "nginx-dev-vm"
vm_size             = "Standard_B1s"
admin_user          = "azureuser"
admin_password      = "Password123!"
