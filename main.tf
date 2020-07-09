provider "azurerm" {
  subscription_id = var.subscription_value
  client_id = var.client_value
  client_secret = var.client_secret_value
  tenant_id = var.tenant_value
  version = "~> 2.0"
  features {}
}



module "rg_module" {
    source = "./module/RG"
    ResourceName = var.ResourceName
    location   = var.location
    environment = var.environment
}

