#configuramos el nombre del grupo de recursos
variable "resource_group_name" {
  default = "casopractico2"
}
#configuramos la ubicación
variable "location" {
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
#ruta de la llave ssh
variable "public_key_path" {
  type = string
  description = "Ruta para la clave pública de acceso a las instancias"
  default = "C:/Users/sergi/.ssh/id_rsa.pub"
}
#usuario ssh
variable "ssh_user" {
  type = string
  description = "Usuario para hacer ssh"
  default = "azureuser"
}