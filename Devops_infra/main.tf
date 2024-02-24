
module "resource_group" {
  source               = "./resourcegroup_module"
  resource_group_name  = local.Infra_defaults.resource_group_name
  location             = local.Infra_defaults.location
}


module "storage_account" {
  source                   = "./storageaccount_module"
  storage_account_name     = local.Infra_defaults.name
  resource_group_name      = local.Infra_defaults.resource_group_name
  location                 = local.Infra_defaults.location
  account_tier             = "Standard"
  account_replication_type = local.Infra_defaults.replication_type
}

