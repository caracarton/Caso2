#creamos el cluster, elegimos el nombre, ubicación,etc
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.aks_dns_prefix
  kubernetes_version  = "1.33.7"

#Elegimos el nombre de los nodos, cuantos queremos y el tamaño (elegimos el mismo tamaño que la vm ubuntu por que casi todos los tiscos tienen restricciones por la cuenta de student)
  default_node_pool {
    name       = "nodepool1"
    node_count = 2
    vm_size    = "Standard_B2as_v2"
  }
#Hay que elegir una identidad, la ponemos como asignada por el sistema
  identity {
    type = "SystemAssigned"
  }
#Creamos el perfil de red, el sku tiene que standard o no podemos crearlo por restricciones de azure students
  network_profile {
    network_plugin = "azure"
    load_balancer_sku = "standard"
  }

#le damos una etiqueta
  tags = {
    environment = "casopractico2"
  }
}
#Aqui damos los permisos, para ello usamos scope para dar permisos a acr, el role_definition name es la función que queremos asignar.
#principal id es la identidad gestionada de mi aks que necesita acceso al acr
resource "azurerm_role_assignment" "aks_acr" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.aks.identity[0].principal_id
}