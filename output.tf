output "resource_name_output" {
    value = module.rg_module.resource_name_output
}
output "resource_id_output" {
    value = module.rg_module.resource_id_output
}
output "location_output" {
    value = module.rg_module.location_output
}
output "nsg_output" {
    value = module.VN_module.nsg_output
}
output "vnet_cidr"{
    value = module.VN_module.vnet_cidr
}
output "sub1_output"{
    value = module.VN_module.sub1_output
}
output "sub2_output"{
    value = module.VN_module.sub2_output
}
output "sub3_output"{
    value = module.VN_module.sub3_output
}
output "vm_public_ip" {
    value = module.VM_module.vm_public_ip
}
output "availability_set_id" {
    value = module.VM_module.availability_set_id
}
output "vm_name" {
    value = module.VM_module.vm_name
}
output "nic_id" {
    value = module.VM_module.nic_id
}
