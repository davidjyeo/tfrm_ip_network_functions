variable "addr_space" {
  default = "192.168.0.0/16"
}

variable "nic_count" {
  default = 25
}

variable "snet_count" {
  default = 1
}



variable "location" {
  description = "(Required)"

  default = [
    "uksouth",
    "eastus",
    "brazilsouth",
    "australiaeast",
    "southeastasia",
    "ukwest",
    "northeurope",
  ]
}

variable "vnet_address_space" {
  default = [
    "10.1.0.0/16",
    "10.2.0.0/16",
    "10.3.0.0/16",
    "10.4.0.0/16",
    "10.5.0.0/16",
    "10.6.0.0/16",
    "10.7.0.0/16",
  ]
}