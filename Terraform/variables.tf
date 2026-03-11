#configuramos el nombre del grupo de recursos
variable "resource_group_name" {
  default = "casopractico2"
}
#configuramos la ubicación
variable "location_name" {
  default = "norwayeast"
}
#nombre de red
variable "network_name" {
  default = "vnet1"
}
#nombre de subred
variable "subnet_name" {
  default = "subnet1"
}