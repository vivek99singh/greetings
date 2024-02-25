terraform {
  backend "azurerm" {
    resource_group_name   = "myexperimentrg1234"
    storage_account_name  = "mybackendstorage28022024"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"

  }
}
