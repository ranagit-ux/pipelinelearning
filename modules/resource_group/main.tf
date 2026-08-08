resource "azurerm_resource_group" "landing-zone7th" {
    for_each = var.rgvar
    name = each.value.name
    location = each.value.location
     
}