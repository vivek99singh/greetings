locals {
  Infra_defaults = {
    name         = "mybackendstorage28022024"
    resource_group_name = "myexperimentrg1234"
    location     = "westeurope"
    account_tier = "Standard"
    replication_type = "LRS"
  }
}