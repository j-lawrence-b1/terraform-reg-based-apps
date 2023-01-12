# ---------------------------------
# locals
# ---------------------------------
locals {
  resource_prefix = "${var.team}-${var.env}-${var.app_name}"
}

resource "random_string" "suffix" {
  length  = 8
  lower   = true
  upper   = false
  special = false
}

# ---------------------------------
# modules
# ---------------------------------
module "vpc" {
  source = "../../../..//aws/casab/modules/vpc"

  vpc_name = "${local.resource_prefix}-${random_string.suffix.id}"
  vpc_cidr = var.vpc_cidr

  public_subnets                = var.public_subnets
  private_subnets               = var.private_subnets
  database_subnets              = var.database_subnets
  nat_eip_ids                   = var.nat_eip_ids
  enable_database_public_access = var.enable_database_public_access

  app_name = var.app_name
  env      = var.env
  owner    = var.owner
  team     = var.team
}
