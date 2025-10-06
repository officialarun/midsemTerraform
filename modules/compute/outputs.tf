output "vm_private_ip" {
  value = azurerm_network_interface.nic.private_ip_address
}

output "vm_public_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}

