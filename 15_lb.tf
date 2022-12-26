resource "azurerm_lb" "lb" {
  name = "lb-web"
  location = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  sku = "Standard"
  
  frontend_ip_configuration {
    name = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.pub_ip1.id
  }

}