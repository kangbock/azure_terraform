resource "azurerm_route_table" "irt" {
  name = "${var.prefix}-irt"
  location = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  route {
    name = "${var.prefix}-irt"
    address_prefix = "0.0.0.0/0"
    next_hop_type = "Internet"
  }
}