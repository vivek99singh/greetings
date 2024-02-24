
module "resource_group" {
  source               = "./resourcegroup_module"
  resource_group_name  = local.Infra_defaults.resource_group_name
  location             = local.Infra_defaults.location
}

output "resource_group_id" {
  value = module.resource_group.resource_group_id
}

module "storage_account" {
  source                   = "./storageaccount_module"
  storage_account_name     = local.Infra_defaults.name
  resource_group_name      = local.Infra_defaults.resource_group_name
  location                 = local.Infra_defaults.location
  account_tier             = local.Infra_defaults.account_tier
  account_replication_type = local.Infra_defaults.replication_type
}

output "storage_account_primary_connection_string" {
  value = module.storage_account.storage_account_primary_connection_string
}