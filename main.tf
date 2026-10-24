terraform {
    required_version = ">= 1.2"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm",
            version = "~> 4.2"
        }
    }
}

provider "azurerm" {
    features {
        resource_group {
            prevent_deletion_if_contains_resources = false
        }
    }
}

resource "azurerm_resource_group" "rg" {
    name = "rg-transfer-westus"
    location = "westus"
}