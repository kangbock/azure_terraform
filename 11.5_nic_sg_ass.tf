resource "azurerm_network_interface_security_group_association" "nic_sg_ass_web1" {
  network_interface_id = azurerm_network_interface.nic_web1.id
  network_security_group_id = azurerm_network_security_group.sg1.id
}

resource "azurerm_network_interface_security_group_association" "nic_sg_ass_web2" {
  network_interface_id = azurerm_network_interface.nic_web2.id
  network_security_group_id = azurerm_network_security_group.sg1.id
}

resource "azurerm_network_interface_security_group_association" "nic_sg_ass_was1" {
  network_interface_id = azurerm_network_interface.nic_was1.id
  network_security_group_id = azurerm_network_security_group.sg1.id
}

resource "azurerm_network_interface_security_group_association" "nic_sg_ass_was2" {
  network_interface_id = azurerm_network_interface.nic_was2.id
  network_security_group_id = azurerm_network_security_group.sg1.id
}