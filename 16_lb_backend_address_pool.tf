resource "azurerm_lb_backend_address_pool" "lb_back" {
  name = "lb-back"
  loadbalancer_id = azurerm_lb.lb.id
}