#creamos el ACR, le damos un nombre único, lo metemos en el grupo de recursos, le damos la misma ubicación que la máquina virtual, sku estandard y permisos de admin
resource "azurerm_container_registry" "acr" {
  name                = "testacr1sergiomiralles"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard"
  admin_enabled       = true
}