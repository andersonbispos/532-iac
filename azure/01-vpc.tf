resource "azurerm_virtual_network" "jitsi_vmnet" {
  name                = var.vpc_name
  address_space       = ["10.0.0.0/16"]
  location            = var.rs_location
  resource_group_name = var.azure_rg
}

resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = var.azure_rg
  virtual_network_name = azurerm_virtual_network.jitsi_vmnet.name
  address_prefixes     = ["10.0.0.0/24"]
}

/* resource "azurerm_public_ip" "jitsi-public-ip" {
    name			= var.name_ip
    location			= var.location
    resource_group_name		= var.resource_group_name
    allocation_method		= "Static"
    sku				= "Standard"
} */