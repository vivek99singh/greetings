locals {
  Infra_defaults = {
    name         = "mybackendstorage23022024"
    resource_group_name = "myexperimentrg"
    location     = "westeurope"
    account_tier = "Standard"
    replication_type = "LRS"
  }
}