variable "location" {
  description = "value of the location"
  type        = string
}

variable "netmgrName" {
  description = "value of the name"
  type        = string
}

variable "rgResourceId" {
  description = "value of the resource group resource id"
  type        = string
}

variable "ipamPoolAddressPrefixes" {
  description = "value of the ipam pool address prefix"
  type        = list(string)
}

variable "subscription_id" {
  description = "value of the subscription id"
  type        = string
}
