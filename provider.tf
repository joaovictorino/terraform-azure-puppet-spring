terraform {
  required_version = ">= 0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.25.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}