locals {
  Infra_defaults = {
    name         = "mybackendstorage26022024"
    resource_group_name = "myexperimentrg12"
    location     = "westeurope"
    account_tier = "Standard"
    replication_type = "LRS"
  }
}