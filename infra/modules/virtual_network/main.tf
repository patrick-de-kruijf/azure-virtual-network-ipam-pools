resource "azapi_resource" "virtualNetwork" {
  type      = "Microsoft.Network/virtualNetworks@2024-05-01"
  name      = var.name
  location  = var.location
  parent_id = var.rgResourceId
  body = {
    properties = {
      addressSpace = {
        ipamPoolPrefixAllocations = [
          {
            numberOfIpAddresses = "254"
            pool = {
              id = var.ipamPoolResourceId
            }
          }
        ]
      }
      subnets = [
        {
          name = "snetTest"
          properties = {
            ipamPoolPrefixAllocations = [
              {
                numberOfIpAddresses = "32"
                pool = {
                  id = var.ipamPoolResourceId
                }
              }
            ]
          }
        },
        {
          name = "snetTest2"
          properties = {
            ipamPoolPrefixAllocations = [
              {
                numberOfIpAddresses = "64"
                pool = {
                  id = var.ipamPoolResourceId
                }
              }
            ]
          }
        },
        {
          name = "snetTest3"
          properties = {
            ipamPoolPrefixAllocations = [
              {
                numberOfIpAddresses = "64"
                pool = {
                  id = var.ipamPoolResourceId
                }
              }
            ]
          }
        },
        {
          name = "snetTest5"
          properties = {
            ipamPoolPrefixAllocations = [
              {
                numberOfIpAddresses = "32"
                pool = {
                  id = var.ipamPoolResourceId
                }
              }
            ]
          }
        },
        {
          name = "snetTest6"
          properties = {
            ipamPoolPrefixAllocations = [
              {
                numberOfIpAddresses = "16"
                pool = {
                  id = var.ipamPoolResourceId
                }
              }
            ]
          }
        }
      ]
    }
  }

  response_export_values = []
}