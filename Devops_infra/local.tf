locals {
  Infra_defaults = {
    name         = "mybackendstorage24022024"
    resource_group_name = "myexperimentrg12"
    location     = "westeurope"
    account_tier = "Standard"
    replication_type = "LRS"
  }
}