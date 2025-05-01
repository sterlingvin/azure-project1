output "resource_group_name" {
  value = azurerm_resource_group.devops_rg.name
}

output "vnet_id" {
  value = azurerm_virtual_network.devops_vnet.id
}
