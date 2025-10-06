module "networking" {
  source              = "./modules/networking"
  resource_group_name = "docker-rg"
  location            = "East US"
  env                 = "dev"
}

module "compute" {
  source              = "./modules/compute"
  vm_name             = "nginx-vm"
  location            = "East US"
  resource_group_name = module.networking.resource_group_name
  subnet_id           = module.networking.subnet_id
  vm_size             = "Standard_B1s"
  admin_user          = "azureuser"
  admin_password      = "Password123!"
}

