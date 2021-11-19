resource "azurerm_resource_group" "rg" {
  # count    = length(var.location)
  name     = "rg-cidr-uks-001"
  location = "uksouth"
}