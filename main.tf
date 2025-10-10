# Root module calling networking and compute

module "networking" {
  source              = "./modules/networking"
  resource_group_name = var.resource_group_name
  location            = var.location
  env                 = var.env
  vnet_address_space  = var.vnet_address_space
  subnet_prefixes     = var.subnet_prefixes
}

module "compute" {
  source              = "./modules/compute"
  vm_name             = var.vm_name
  location            = var.location
  resource_group_name = module.networking.resource_group_name
  subnet_id           = module.networking.subnet_id
  vm_size             = var.vm_size
  admin_user          = var.admin_user
  admin_password      = var.admin_password
}
