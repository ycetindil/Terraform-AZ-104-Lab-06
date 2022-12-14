resource "azurerm_virtual_network_peering" "peer1to2" {
  name                      = "peer1to2"
  resource_group_name       = module.rg1.rg.name
  virtual_network_name      = azurerm_virtual_network.vnet1.name
  remote_virtual_network_id = module.vnet2.vnet.id
}

resource "azurerm_virtual_network_peering" "peer2to1" {
  name                      = "peer2to1"
  resource_group_name       = module.rg1.rg.name
  virtual_network_name      = module.vnet2.vnet.name
  remote_virtual_network_id = azurerm_virtual_network.vnet1.id
  allow_forwarded_traffic   = true
}

resource "azurerm_virtual_network_peering" "peer1to3" {
  name                      = "peer1to3"
  resource_group_name       = module.rg1.rg.name
  virtual_network_name      = azurerm_virtual_network.vnet1.name
  remote_virtual_network_id = module.vnet3.vnet.id
}

resource "azurerm_virtual_network_peering" "peer3to1" {
  name                      = "peer3to1"
  resource_group_name       = module.rg1.rg.name
  virtual_network_name      = module.vnet3.vnet.name
  remote_virtual_network_id = azurerm_virtual_network.vnet1.id
  allow_forwarded_traffic   = true
}