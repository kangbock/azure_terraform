resource "azurerm_lb_probe" "lb_probe" {
  name = "lb-probe"
  loadbalancer_id = azurerm_lb.lb.id
  protocol = "Tcp"
  port = "80"
}