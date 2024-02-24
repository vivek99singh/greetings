locals {
  Infra_defaults = {
    name         = "mybackendstorage2502"
    resource_group_name = "myexperimentrg"
    location     = "westeurope"
    account_tier = "Standard"
    replication_type = "LRS"
  }
}