terraform {
  backend "azurerm" {
    resource_group_name   = "myexperimentrg"
    storage_account_name  = "mybackendstorage2502"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"

  }
}
