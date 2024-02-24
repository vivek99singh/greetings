variable "storage_account_name" {
  description = "Specifies the name of the storage account. Must be unique across all storage accounts in Azure."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium."
  type        = string
}

variable "account_replication_type" {
  description = "The type of replication to use for this storage account. "
  type        = string
}