resource "azurerm_subnet" "web1" {
  name = "WEB1"
  address_prefixes = ["10.0.0.0/24"]
  resource_group_name = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
}

resource "azurerm_subnet" "web2" {
  name = "WEB2"
  address_prefixes = ["10.0.1.0/24"]
  resource_group_name = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
}

resource "azurerm_subnet" "was1" {
  name = "WAS1"
  address_prefixes = ["10.0.2.0/24"]
  resource_group_name = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
}

resource "azurerm_subnet" "was2" {
  name = "WAS2"
  address_prefixes = ["10.0.3.0/24"]
  resource_group_name = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
}

resource "azurerm_subnet" "db1" {
  name = "${var.prefix}-DB1"
  address_prefixes = ["10.0.4.0/24"]
  resource_group_name = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  service_endpoints = ["Microsoft.Sql"]
}

resource "azurerm_subnet" "db2" {
  name = "${var.prefix}-DB2"
  address_prefixes = ["10.0.5.0/24"]
  resource_group_name = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  service_endpoints = ["Microsoft.Sql"]
}