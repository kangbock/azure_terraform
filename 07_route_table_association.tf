resource "azurerm_subnet_route_table_association" "irt_web_1" {
  subnet_id = azurerm_subnet.web1.id
  route_table_id = azurerm_route_table.irt.id
}

resource "azurerm_subnet_route_table_association" "irt_web_2" {
  subnet_id = azurerm_subnet.web2.id
  route_table_id = azurerm_route_table.irt.id
}
/*
resource "azurerm_subnet_route_table_association" "nrt_was_1" {
  subnet_id = azurerm_subnet.was1.id
  route_table_id = azurerm_route_table.irt.id
}

resource "azurerm_subnet_route_table_association" "nrt_was_2" {
  subnet_id = azurerm_subnet.was2.id
  route_table_id = azurerm_route_table.irt.id
}

resource "azurerm_subnet_route_table_association" "nrt_db_1" {
  subnet_id = azurerm_subnet.db1.id
  route_table_id = azurerm_route_table.irt.id
}

resource "azurerm_subnet_route_table_association" "nrt_db_2" {
  subnet_id = azurerm_subnet.db2.id
  route_table_id = azurerm_route_table.irt.id
}
*/