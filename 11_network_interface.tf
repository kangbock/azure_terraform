resource "azurerm_network_interface" "nic_web1" {
  name = "${var.prefix}-nic-web1"
  location = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_id = azurerm_subnet.web1.id
    public_ip_address_id = azurerm_public_ip.pub_ip.id
  }
}

resource "azurerm_network_interface" "nic_web2" {
  name = "${var.prefix}-nic-web2"
  location = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_id = azurerm_subnet.web2.id
  }
}

resource "azurerm_network_interface" "nic_was1" {
  name = "${var.prefix}-nic-was1"
  location = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_id = azurerm_subnet.was1.id
  }
}

resource "azurerm_network_interface" "nic_was2" {
  name = "${var.prefix}-nic-was2"
  location = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_id = azurerm_subnet.was2.id
  }
}