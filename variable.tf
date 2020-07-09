variable "workspace_to_environment_map" {
  type = map
  default = {
    dev   = "dev"
    qa    = "qa"
    stage = "stage"
    prod  = "prod"
  }
}
variable "subscription_value"{}  
variable "client_value" {}
variable "client_secret_value" {}
variable "tenant_value" {}
variable "ResourceName" {}
variable "aksName" {}
variable "location" {}

 variable "vn_address_space" {}

 variable "subnet_1" {}
 variable "subnet_2" {}
 variable "subnet_3" {}
 #variable "subnet_id"{}
variable "storageName" {}
variable "public_ip_name" {}
variable "nic_name" {}
variable "vm_name" {}
variable "storage_account_name" {}
variable "storage_container_name" {}
variable "blob_container_name" {}
variable "environment" {}



