resource "azurerm_resource_group" "rgsm" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location

}
