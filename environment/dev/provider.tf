terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.18.0"
    }
  }
}
provider "azurerm" {
    features{}
    subscription_id = "c83186ec-c949-4e2f-9e31-8888c510ac96"
  
}