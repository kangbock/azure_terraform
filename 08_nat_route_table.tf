resource "azurerm_route_table" "nrt" {
  name = "${var.prefix}-nrt"
  location = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  route {
    name = "${var.prefix}-nrt"
    address_prefix = "0.0.0.0/0"
    next_hop_type = "Internet"
  }
}