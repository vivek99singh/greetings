resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type


}

output "storage_account_primary_connection_string" {
  value = azurerm_storage_account.storage.primary_connection_string
}