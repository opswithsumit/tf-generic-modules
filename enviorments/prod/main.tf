module "resource_groups" {
  source = "../../generic_modules/resource_groups"
  rgs    = var.rg-prod
}

module "virtual_networks" {
  depends_on = [module.resource_groups]
  source     = "../../generic_modules/virtual_networks"
  vnets      = var.vnet-prod
}

module "subnets" {
  depends_on = [module.virtual_networks]
  source     = "../../generic_modules/subnets"
  snets      = var.snet-prod
}

module "pips" {
  depends_on = [ module.resource_groups ]
  source = "../../generic_modules/pip"
  pip    = var.pipss
}

module "network_interface_cards" {
  depends_on = [module.pips]
  source     = "../../generic_modules/nic"
  nics       = var.nics

}

module "vm" {
  depends_on = [module.network_interface_cards]
  source     = "../../generic_modules/virtual_machines"
  vmss       = var.vmss

}