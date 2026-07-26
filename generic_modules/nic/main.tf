resource "azurerm_network_interface" "nics" {
  for_each            = var.nics
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.nic_rg_name

  ip_configuration {
    name                          = "lolo"
    subnet_id                     = data.azurerm_subnet.fe-subnet[each.key].id
    public_ip_address_id          = data.azurerm_public_ip.pip-subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}
