locals {
  subscription_id = var.subscription_id == "" ? data.azurerm_subscription.current.id : var.subscription_id
}