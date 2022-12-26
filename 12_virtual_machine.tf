resource "azurerm_virtual_machine" "vm_web1" {
  name = "${var.prefix}-vm-web1"
  resource_group_name = azurerm_resource_group.rg1.name
  location = azurerm_resource_group.rg1.location
  vm_size = "Standard_DS1_v2"
  delete_os_disk_on_termination = true
  network_interface_ids = [
    azurerm_network_interface.nic_web1.id
  ]
  

  storage_os_disk {
    name = "lkb-osdisk"
    caching = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "OpenLogic"
    offer = "CentOS"
    sku = "7.5"
    version = "latest"
  }
  
  os_profile {
    computer_name = "vm-web1"
    admin_username = "adminuser"
    custom_data = "${file("nginx.sh")}"
  }

  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path = "/home/adminuser/.ssh/authorized_keys"
      key_data = azurerm_ssh_public_key.lkb_key.public_key
    }
  }
}