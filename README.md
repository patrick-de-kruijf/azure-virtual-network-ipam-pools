# Azure Virtual Network Manager - IPAM Pools

## General info

This repository provides a sample of code that deploys a proof of concept for using IPAM Pools automatically.

It deploys the following Azure resources:
- Resource Group
- Virtual Network Manager
    - IPAM Pool
- Virtual Network
    - Subnet(s)

The code is using AZAPI provider within Terraform, because the AZURERM provider does not understand some resources just yet.

## Deployment

`cd infra`

`az login --tenant {tenant id}`

`az account set --subscription {subscription id}`

`terraform apply --vars-file={location to .tfvars}`

## Clean up

`cd infra`

`az login --tenant {tenant id}`

`az account set --subscription {subscription id}`

`terraform destroy --vars-file={location to .tfvars}`