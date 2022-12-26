resource "azurerm_mysql_server" "lkb_mysql" {
  name = "${var.prefix}-mysql"
  location = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  administrator_login = "kb97"
  administrator_login_password = "It12345!"

  sku_name = "GP_Gen5_2"
  storage_mb = 5120
  version = "5.7"

  ssl_enforcement_enabled = true
}

resource "azurerm_mysql_database" "lkb_mysql_db" {
  name = "${var.prefix}-mysql-db"
  resource_group_name = azurerm_resource_group.rg1.name
  server_name = azurerm_mysql_server.lkb_mysql.name
  charset = "utf8"
  collation = "utf8_unicode_ci"
}

resource "azurerm_mysql_virtual_network_rule" "lkb_mysql_vnet" {
  name = "${var.prefix}-mysql-vnet"
  resource_group_name = azurerm_resource_group.rg1.name
  server_name = azurerm_mysql_server.lkb_mysql.name
  subnet_id = azurerm_subnet.db1.id
}