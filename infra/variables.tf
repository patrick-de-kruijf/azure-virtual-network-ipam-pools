variable "subscription_id" {
  description = "Value of the subscription ID to be used for the deployment"
  type        = string

  validation {
    condition     = length(var.subscription_id) > 0
    error_message = "Subscription ID must be provided"
  }
}

variable "location" {
  description = "Value of the location to be used for the deployment"
  type        = string

  validation {
    condition     = length(var.location) > 0
    error_message = "Location must be provided"
  }
}
