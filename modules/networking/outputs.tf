output "resource_group_name" {
  description = "name of the resouce group"
  value = azurerm_resource_group.rg.name
}

output "subnet_id" {
  description = "value of subnet id"
  value = azurerm_subnet.subnet.id
}

output "vnet_id" {
  description = "The ID of the created virtual network"
  value       = azurerm_virtual_network.vnet.id
}