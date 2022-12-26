resource "azurerm_resource_group" "rg1" {
  name = "${var.prefix}-resources"
  location = "Korea Central"
}