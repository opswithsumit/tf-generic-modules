data "azurerm_network_interface" "vm" {
  for_each            = var.vmss
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}
