rg-prod = {
  rg1 = {
    name     = "rg-demo-prod"
    location = "Central India"
  }
  rg2 = {
    name     = "rg-test-prod"
    location = "Central India"
  }
  rg3 = {
    name     = "rg-sm-prod"
    location = "Central Inida"
  }
}

vnet-prod = {
  vnet1 = {
    name                = "demo-vnet-prod"
    location            = "Central India"
    resource_group_name = "rg-demo-prod"
    address_space       = ["192.168.0.0/16"]
  }
}

snet-prod = {
  snet1 = {
    name                 = "FE-Subnet-prod"
    resource_group_name  = "rg-demo-prod"
    virtual_network_name = "demo-vnet-prod"
    address_prefixes     = ["192.168.1.0/24"]
  }
  snet2 = {
    name                 = "BE-Subnet-prod"
    resource_group_name  = "rg-demo-prod"
    virtual_network_name = "demo-vnet-prod"
    address_prefixes     = ["192.168.2.0/24"]
  }
}

nics = {
  nic1 = {
    nic_name             = "fe-nic"
    nic_location         = "Central India"
    nic_rg_name          = "rg-demo-prod"
    subnet_name          = "FE-Subnet-prod"
    virtual_network_name = "demo-vnet-prod"
    pip_name             = "fe-pip"
  }
  nic2 = {
    nic_name             = "be-nic"
    nic_location         = "Central India"
    nic_rg_name          = "rg-demo-prod"
    subnet_name          = "BE-Subnet-prod"
    virtual_network_name = "demo-vnet-prod"
    pip_name             = "be-pip"
  }
}

pipss = {
  pip1 = {
    pip_name          = "fe-pip"
    rg_name           = "rg-demo-prod"
    pip_location      = "Central India"
    allocation_method = "Static"
  }
  pip2 = {
    pip_name          = "be-pip"
    rg_name           = "rg-demo-prod"
    pip_location      = "Central India"
    allocation_method = "Static"
  }
}

vmss = {
  vm1 = {
    vm_name        = "fe-linux-vm"
    rg_name        = "rg-demo-prod"
    location       = "Central India"
    vm_size        = "Standard_D2s_v3"
    admin_username = "devopsuser"
    admin_password = "sumit@1234567"
    nic_name       = "fe-nic"
  }
  vm2 = {
    vm_name        = "be-linux-vm"
    rg_name        = "rg-demo-prod"
    location       = "Central India"
    vm_size        = "Standard_D2s_v3"
    admin_username = "devopsuser"
    admin_password = "sumit@1234567"
    nic_name       = "be-nic"
  }
}

