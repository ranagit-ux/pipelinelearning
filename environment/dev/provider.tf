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
    subscription_id = "c1aeb57e-f88c-40b4-8a91-2d2773d2ed3b"
  
}