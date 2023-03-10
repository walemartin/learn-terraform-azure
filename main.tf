# Configure the Azure provider
terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
cloud {
    organization = "rytesoft"
    workspaces {
      name = "learn-terraform-azure"
    }
  }
 
}



provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "my-first-terraform-rsg"
  location = "westus2"
}
