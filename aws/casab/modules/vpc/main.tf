# ---------------------------------
# locals
# ---------------------------------
locals {
  resource_prefix = "${var.team}-${var.env}-${var.app_name}"
}

# ---------------------------------
# modules
# ---------------------------------
module "tags" {
  source = "git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/tags?ref=tags-v0.0.1"

  tags = {
    app         = var.app_name
    env         = var.env
    owner       = var.owner
    team        = var.team
  }
}

module "vpc" {
  source = "git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/vpc?ref=vpc-v0.0.1"

  vpc_name = local.resource_prefix
  vpc_cidr = var.vpc_cidr
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
  persistence_subnets = var.persistence_subnets
  nat_eip_ids = var.nat_eip_ids

  tags     = module.tags.default_tags
}
