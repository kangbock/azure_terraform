resource "azurerm_virtual_machine_scale_set" "lkb_vmss" {
  name                = "lkb-vmss"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  upgrade_policy_mode = "Manual"
  depends_on = [
    azurerm_kubernetes_cluster.lkb_aks
  ]
  
  sku {
    name = "Standard_DS1_v2"
    tier = "Standard"
    capacity = 2
  }

  storage_profile_image_reference {
    publisher = "OpenLogic"
    offer = "CentOS"
    sku = "7.5"
    version = "latest"
  }

  storage_profile_os_disk {
    name = ""
    caching = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_profile_data_disk {
    lun = 0
    caching = "ReadWrite"
    create_option = "Empty"
    disk_size_gb = 10
  }

  os_profile {
    computer_name_prefix = "vmlab"
    admin_username = "adminuser"
    admin_password = "It12345!"
    custom_data = file("nginx.sh")
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  network_profile {
    name = "network_profile"
    primary = true
    network_security_group_id = azurerm_network_security_group.sg1.id

    ip_configuration {
      name = "IP"
      subnet_id = azurerm_subnet.web1.id
      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.lb_back.id]
      primary = true
    }
  }
}