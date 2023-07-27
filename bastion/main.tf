resource "azurerm_bastion_host" "bastion" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  copy_paste_enabled  = var.copy_paste_enabled
  file_copy_enabled   = var.file_copy_enabled
  sku                 = var.sku

  ip_configuration {
    name               = var.ip_configuration.name
    subnet_id          = var.ip_configuration.subnet_id
    public_ip_address_id = var.ip_configuration.public_ip_address_id
  }

  ip_connect_enabled    = var.ip_connect_enabled
  scale_units           = var.scale_units
  shareable_link_enabled = var.shareable_link_enabled
  tunneling_enabled     = var.tunneling_enabled

  tags = var.tags
}

