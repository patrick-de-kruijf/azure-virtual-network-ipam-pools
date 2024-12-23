
resource "azurerm_resource_group" "rg" {
  name     = local.rgName
  location = var.location
}

module "networkManager" {
  source = "./modules/network_manager"

  depends_on = [azurerm_resource_group.rg]

  location     = var.location
  netmgrName   = local.netmgrName
  rgResourceId = azurerm_resource_group.rg.id

  ipamPoolAddressPrefixes = ["192.168.1.0/24"]
  subscription_id         = var.subscription_id
}

module "virtualNetwork" {
  source = "./modules/virtual_network"

  depends_on = [azurerm_resource_group.rg, module.networkManager]

  location                 = var.location
  name                     = local.vnetName
  rgResourceId             = azurerm_resource_group.rg.id
  networkManagerResourceId = module.networkManager.networkManagerResourceId.id
  ipamPoolResourceId       = module.networkManager.ipamResourceId.id

}