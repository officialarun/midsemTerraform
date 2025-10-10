output "vm_private_ip" {
  description = "private ip of the virtual machine"
  value = azurerm_network_interface.nic.private_ip_address
}

output "vm_public_ip" {
  description = "public ip for virtual machine attached to nic"
  value = azurerm_public_ip.vm_ip.ip_address
}

