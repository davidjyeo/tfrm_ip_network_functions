resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-cidr-uks-001"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = [var.addr_space]
  location            = azurerm_resource_group.rg.location
}

resource "azurerm_subnet" "snet" {
  name                 = "snet-cidr-uks-001"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["${cidrsubnet(var.addr_space, 8, 1)}"]
}
