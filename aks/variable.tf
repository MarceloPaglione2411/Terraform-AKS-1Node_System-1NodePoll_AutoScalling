variable "aks_name" {
    description = "Nome Cluster AKS"
    type = string
}

variable "rg_name" {
    description = "Nome Resource Group (AKS)"
    type = string
}

variable "rg_location" {
    description = "Localização RG"
    type = string
}

variable "name_nodepool" {
    description = "Nome Node Pool"
    type = string
}

variable "vm_size" {
    description = "Tamanho VM node Pool"
    type = string
}

variable "dns_aks" {
    description = "DNS cluster AKS"
    type = string
}


variable "name_nodepool_aplicacao" {
    description = "Nome Node Pool Aplicação"
    type = string
}

variable "os_sku_name" {
    description = "SKU POOL"
    type = string
}

variable "os_disk_type" {
    description = "Tipo do Disco"
    type = string
}
