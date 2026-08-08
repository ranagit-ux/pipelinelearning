rgvar = {
  rg1 = {
    name     = "softwarehub"
    location = "southindia"
  }
}

stg = {
  stg1 = {
    name                     = "softwarestoragerana"
    location                 = "southindia"
    resource_group_name      = "softwarehub"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
}

vnet = {
  vnet1 = {
    name = "7thlandingzonevnet"
    location = "east us"
    resource_group_name = "softwarehub"
    address_space = ["10.0.0.0/16"]
    tags = {
      environment = "dev"
  }
  subnets = {
    subnet1 = {
      name = "subnet1"
      address_prefixes = ["10.0.1.0/24"]
    }
    subnet2 = {
      name = "subnet2"
      address_prefixes = ["10.0.2.0/24"]
    } 

}
}
}

varnic={
  vm1={
    namenic = "nic1"
    location = "southindia"
    resource_group_name = "softwarehub"
    private_ip_address_allocation = "dynamic"
    ipname = "ipname"
    vmname = "frontend-vm1"
    size = "Standard_F2"
    admin_username = ""
    admin_password = ""
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }  
}