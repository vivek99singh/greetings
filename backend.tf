terraform {
  backend "azurerm" {
    resource_group_name   = "myexperimentrg1"
    storage_account_name  = "mybackendstorage25022024"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"

  }
}
