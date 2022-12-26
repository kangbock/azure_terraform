resource "azurerm_lb_rule" "lb_rule" {
  name = "lb-rule"
  loadbalancer_id = azurerm_lb.lb.id
  protocol = "Tcp"
  frontend_port = 80
  backend_port = 80
  frontend_ip_configuration_name = azurerm_lb.lb.frontend_ip_configuration[0].name
  backend_address_pool_ids = [azurerm_lb_backend_address_pool.lb_back.id]
  probe_id = azurerm_lb_probe.lb_probe.id
}