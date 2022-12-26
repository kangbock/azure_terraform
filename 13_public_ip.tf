resource "azurerm_public_ip" "pub_ip" {
  name = "pub-ip"
  resource_group_name = azurerm_resource_group.rg1.name
  location = azurerm_resource_group.rg1.location
  allocation_method = "Static"
  sku = "Standard"
}

resource "azurerm_public_ip" "pub_ip1" {
  name = "pub-ip1"
  resource_group_name = azurerm_resource_group.rg1.name
  location = azurerm_resource_group.rg1.location
  allocation_method = "Static"
  sku = "Standard"
}

resource "azurerm_public_ip" "pub_ip_nat" {
  name = "pub-ip-nat"
  resource_group_name = azurerm_resource_group.rg1.name
  location = azurerm_resource_group.rg1.location
  allocation_method = "Static"
  sku = "Standard"
}

output "public_ip" {
  value = azurerm_public_ip.pub_ip
}