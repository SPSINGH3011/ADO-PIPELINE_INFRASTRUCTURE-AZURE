terraform {
backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "backendstoragedd"
    container_name       = "backendcontainer"
    key                  = "pipeline.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }

}

provider "azurerm" {
  features {}
  subscription_id = "790084ef-9e9f-4ebf-9120-98c5295aba2a"
}


resource "azurerm_resource_group" "rg1" {
  name     = "ter-rg-001"
  location = "West Europe"
}