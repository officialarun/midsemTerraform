output "rg_name" {
  value = var.rg_name
}

output "location" {
  value = var.location
}

output "vm_public_ip" {
  value = module.compute.vm_public_ip
}

output "vm_private_ip" {
  value = module.compute.vm_private_ip
}
