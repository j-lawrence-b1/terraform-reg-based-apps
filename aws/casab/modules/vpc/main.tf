# ---------------------------------
# locals
# ---------------------------------

# ---------------------------------
# modules
# ---------------------------------
module "tags" {
  source = "git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/tags?ref=tags-v0.0.1"

  tags = {
    app   = var.app_name
    env   = var.env
    owner = var.owner
    team  = var.team
  }
}

module "vpc" {
  source = "git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/vpc?ref=vpc-v0.0.1"

  vpc_name                      = var.vpc_name
  vpc_cidr                      = var.vpc_cidr
  public_subnets                = var.public_subnets
  private_subnets               = var.private_subnets
  database_subnets              = var.database_subnets
  nat_eip_ids                   = var.nat_eip_ids
  enable_database_public_access = var.enable_database_public_access

  tags = module.tags.default_tags
}
