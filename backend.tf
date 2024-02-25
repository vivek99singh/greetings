terraform {
  backend "azurerm" {
    resource_group_name   = "myexperimentrg123"
    storage_account_name  = "mybackendstorage27022024"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"

  }
}
