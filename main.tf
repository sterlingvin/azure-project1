provider "azurerm" {
  features {}
  subscription_id = "c1014638-2b5e-4cc7-b518-31a243d742ae"
}

resource "azurerm_resource_group" "devops_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "devops_vnet" {
  name                = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.devops_rg.name
  
}
