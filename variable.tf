variable "bastion_hosts" {
  type = map(object({
    resource_group_name   = string
    location              = string
    copy_paste_enabled    = bool
    file_copy_enabled     = bool
    sku                   = string
    ip_configuration      = object({
      name               = string
      subnet_id          = string
      public_ip_address_id = string
    })
    ip_connect_enabled    = bool
    scale_units           = number
    shareable_link_enabled = bool
    tunneling_enabled     = bool
    tags                  = map(string)
  }))
}
