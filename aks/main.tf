resource "azurerm_kubernetes_cluster" "my-aks" {
  name                = var.aks_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  dns_prefix = var.dns_aks
  
  #Vou criar 1 node pool com 1 node dentro
  default_node_pool {
    name       = var.name_nodepool
    node_count = 1
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "aplicacao_pool" {
  name                  = var.name_nodepool_aplicacao
  kubernetes_cluster_id = azurerm_kubernetes_cluster.my-aks.id
  vm_size               = var.vm_size
  auto_scaling_enabled = true
  min_count = 1
  max_count = 3
  os_sku = var.os_sku_name
  mode = "User"
  os_disk_type = var.os_disk_type
  
  tags = {
    Environment = "Aplicacao"
  }
}
