#mostramos el id del grupo de recursos creado
output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}
#mostramos la id de la máquina virtual
output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}
#mostramos la ip pública
output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}