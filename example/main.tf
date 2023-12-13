# Create VNets and call the vnet-peering module
module "a-peering-b" {
  source                = "./modules/vnet-peering"
  name                  = var.name
  resource_group_name   = var.resource_group_name
  vnet1_name            = var.vnet1_name
  vnet_id               = var.remote.vnet_id
}

module "b-peering-a" {
  source                = "./modules/vnet-peering"
  name                  = var.name
  resource_group_name   = var.resource_group_name
  vnet1_name            = var.vnet1_name
  vnet_id               = var.remote.vnet_id
}