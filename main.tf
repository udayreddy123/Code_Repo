provider "azurerm" {
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "proddsgstatfile"
    storage_account_name = "proddsgstorageac"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "testdsgrg"
  location = "eastus"
}
