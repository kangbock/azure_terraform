resource "azurerm_nat_gateway" "nat_gw" {
  name = "${var.prefix}-NAT-GW"
  location = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "azurerm_nat_gateway_public_ip_association" "nat_gw_pub" {
  nat_gateway_id       = azurerm_nat_gateway.nat_gw.id
  public_ip_address_id = azurerm_public_ip.pub_ip_nat.id
}