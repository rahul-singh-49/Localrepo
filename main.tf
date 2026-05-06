terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
 }   }
  }
}

provider "azurerm" {
  features {}

}

resource "azurerm_resource_group" "rg1-new" {
  name     = "RG"
  location = "West Europe"

  resource "azurerm_resource_group" "rg6-new" {
  name     = "RG6"
  location = "West Europe"
  }
resource "azurerm_storage_account" "st1" {
  name                     = "st1kasyorage"
  resource_group_name      = azurerm_resource_group.rg1-new.name
  location                 = azurerm_resource_group.rg1-new.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}