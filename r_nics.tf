resource "azurerm_network_interface" "nic" {
  count               = var.nic_count
  name                = format("nic-%03d", count.index + 1)
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  enable_accelerated_networking = true

  ip_configuration {
    name                          = format("ipcfg-%03d", count.index + 1)
    subnet_id                     = azurerm_subnet.snet.id
    private_ip_address_allocation = "static"
    private_ip_address            = cidrhost(azurerm_subnet.snet.address_prefix, count.index + 4)
  }
}
