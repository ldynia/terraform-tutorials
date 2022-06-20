# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

# Create resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westeurope"

  tags = {
    one = "one"
    two = "two"
  }
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "TutorialTFVnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.rg.name
}

