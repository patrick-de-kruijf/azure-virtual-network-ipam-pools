
resource "azapi_resource" "networkManager" {
  type      = "Microsoft.Network/networkManagers@2024-05-01"
  name      = var.netmgrName
  location  = var.location
  parent_id = var.rgResourceId
  body = {
    properties = {
      description = "This network manager is used to test the creation and usage of IPAM in combination with virtual networks in the subscription."
      networkManagerScopeAccesses = [ // "Connectivity", "Routing", "SecurityAdmin", "SecurityUser"
        "Connectivity",
        "Routing"
      ]
      networkManagerScopes = {
        subscriptions = ["/subscriptions/${var.subscription_id}"]
      }
    }
  }
}

resource "azapi_resource" "ipamPool" {
  depends_on = [azapi_resource.networkManager]
  type       = "Microsoft.Network/networkManagers/ipamPools@2024-05-01"
  name       = "ipamPool1"
  location   = var.location
  parent_id  = azapi_resource.networkManager.id
  body = {
    properties = {
      addressPrefixes = var.ipamPoolAddressPrefixes

      description = "Test Description"
      displayName = "Test Name"

    }
  }
}