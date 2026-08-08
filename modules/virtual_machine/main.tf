resource "azurerm_network_interface" "nic"{
    for_each = var.varnic
    name = each.value.namenic
    location = each.value.location
    resource_group_name = each.value.location
    ip_configuration {
    private_ip_address_allocation = each.value.private_ip_address_allocation
    subnet_id = ""
    name = each.value.ipname
    }

}
resource"azurerm_linux_virtual_machine" "frontend-vm"{
     for_each = var.varnic
    name = each.value.vmname
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    size = each.value.size
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
    network_interface_ids = each.value.network_interface_ids
    os_disk {
      caching = each.value.caching
      storage_account_type = each.vlaue.storage_account_type
    }
     source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
   
}