#configuramos terraform
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.1.0"
}
#Elegimos azure y saltamos el provider registration
provider "azurerm" {
  features {}
  skip_provider_registration = true
}