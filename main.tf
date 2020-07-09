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
    location = var.location
    environment = var.environment
}

module "VN_module"{
    source = "./module/VNET"
    ResourceName = module.rg_module.resource_name_output
    location = module.rg_module.location_output
    vn_address_space = var.vn_address_space
    subnet_1 = var.subnet_1
    subnet_2 = var.subnet_2
    subnet_3 = var.subnet_3
}

module "VM_module" {
 source = "./module/VM"
 location = module.rg_module.location_output
 ResourceName = module.rg_module.resource_name_output
 #address_space = module.VN_module.vnet_cidr
 subnet_1 = module.VN_module.sub1_output
 public_ip_name = var.public_ip_name
 nic_name = var.nic_name
 vm_name = var.vm_name
}
