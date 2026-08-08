module "resource_group" {
  source = "../../modules/resource_group"
  rgvar  = var.rgvar

}
module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../../modules/storage_account"
  stg        = var.stg

}
module "virtual_networ" {
  depends_on = [module.resource_group]
  source     = "../../modules/virtual_network"
  vnet       = var.vnet

}