locals {
  Infra_defaults = {
    name         = "mybackendstorage27022024"
    resource_group_name = "myexperimentrg123"
    location     = "westeurope"
    account_tier = "Standard"
    replication_type = "LRS"
  }
}