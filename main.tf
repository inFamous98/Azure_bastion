module "azure_bastion" {
  source                = "./bastion"
  for_each              = var.bastion_hosts
  name                  = each.key
  resource_group_name   = each.value.resource_group_name
  location              = each.value.location
  copy_paste_enabled    = each.value.copy_paste_enabled
  file_copy_enabled     = each.value.file_copy_enabled
  sku                   = each.value.sku
  ip_configuration      = each.value.ip_configuration
  ip_connect_enabled    = each.value.ip_connect_enabled
  scale_units           = each.value.scale_units
  shareable_link_enabled = each.value.shareable_link_enabled
  tunneling_enabled     = each.value.tunneling_enabled
  tags                  = each.value.tags
}