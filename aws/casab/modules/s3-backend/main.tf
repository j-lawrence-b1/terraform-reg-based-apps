# ---------------------------------
# Data resources
# ---------------------------------
data "aws_caller_identity" "current" {}

# ---------------------------------
# Locals
# ---------------------------------
locals {
  resource_prefix = "${var.team}-${var.env}-${var.app_name}-${data.aws_caller_identity.current.account_id}"
}

# ---------------------------------
# Modules
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

# ---------------------------------
# Modules
# ---------------------------------
module "s3_backend" {
  source = "git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/s3?ref=s3-v0.0.1"

  bucket_name = local.resource_prefix

  tags = module.tags.default_tags
}

module "s3_locking_table" {
  source = "git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/dynamodb?ref=dynamodb-v0.0.1"

  enable_create_table = var.enable_locking_table # default: true

  table_name    = "${local.resource_prefix}-lock"
  partition_key = "LockID"
  attributes = [
    {
      name = "LockID"
      type = "S"
    }
  ]

  tags = module.tags.default_tags
}
