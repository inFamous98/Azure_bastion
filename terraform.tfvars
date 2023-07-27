bastion_hosts = {
  bastion1 = {
    resource_group_name   = "my-resource-group"
    location              = "westus2"
    copy_paste_enabled    = true
    file_copy_enabled     = false
    sku                   = "Basic"
    ip_configuration = {
      name               = "ipconfig1"
      subnet_id          = "/subscriptions/<subscription_id>/resourceGroups/<resource_group>/providers/Microsoft.Network/virtualNetworks/<vnet_name>/subnets/AzureBastionSubnet"
      public_ip_address_id = "/subscriptions/<subscription_id>/resourceGroups/<resource_group>/providers/Microsoft.Network/publicIPAddresses/<public_ip_address_name>"
    }
    ip_connect_enabled    = false
    scale_units           = 2
    shareable_link_enabled = false
    tunneling_enabled     = false
    tags = {
      environment = "dev"
    }
  },
  bastion2 = {
    resource_group_name   = "my-resource-group"
    location              = "eastus"
    copy_paste_enabled    = true
    file_copy_enabled     = true
    sku                   = "Standard"
    ip_configuration = {
      name               = "ipconfig2"
      subnet_id          = "/subscriptions/<subscription_id>/resourceGroups/<resource_group>/providers/Microsoft.Network/virtualNetworks/<vnet_name>/subnets/AzureBastionSubnet"
      public_ip_address_id = "/subscriptions/<subscription_id>/resourceGroups/<resource_group>/providers/Microsoft.Network/publicIPAddresses/<public_ip_address_name>"
    }
    ip_connect_enabled    = true
    scale_units           = 4
    shareable_link_enabled = true
    tunneling_enabled     = true
    tags = {
      environment = "prod"
    }
  }
}
