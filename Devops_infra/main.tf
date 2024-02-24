
module "resource_group" {
  source               = "./resource_group_module"
  resource_group_name  = "my-resource-group"
  location             = "westeurope"
}

output "resource_group_id" {
  value = module.resource_group.resource_group_id
}