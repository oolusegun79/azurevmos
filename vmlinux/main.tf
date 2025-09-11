# Terraform Azure connectin configuration

# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "320b693b-3ee3-4699-a2fa-1b125cd49139"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-firstdataproject"
  location = "West US 2"
  tags = {
    environment = "dev"
  }
}