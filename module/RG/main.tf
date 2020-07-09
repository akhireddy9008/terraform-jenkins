resource "azurerm_resource_group" "Rg"{ 
    name =  var.ResourceName
    location = var.location
    tags = {
        Name = var.ResourceName
        Environment = var.environment
    }
}
