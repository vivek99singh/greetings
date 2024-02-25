terraform {
  backend "azurerm" {
    resource_group_name   = "myexperimentrg12"
    storage_account_name  = "mybackendstorage24022024"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"

  }
}
