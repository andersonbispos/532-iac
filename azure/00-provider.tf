terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.28.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "247d0777-aa86-429d-93c7-e8534e5b1de9"
  client_id       = "fe69dc4d-f6a6-456e-b721-f2e61835fbaa"
  tenant_id       = "ee02b8c5-e34f-46fc-b690-54339149af3b"
}

resource "azurerm_resource_group" "multicloud-lab" {
  name     = var.azure_rg
  location = var.rg_location
}