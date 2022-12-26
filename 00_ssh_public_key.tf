resource "azurerm_ssh_public_key" "lkb_key" {
  name = "${var.prefix}-key"
  resource_group_name = azurerm_resource_group.rg1.name
  location = azurerm_resource_group.rg1.location
  public_key = file("../.ssh/lkb1.pub")
}