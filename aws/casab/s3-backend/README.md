## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.3.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.48.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | 3.2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.48.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3_backend"></a> [s3\_backend](#module\_s3\_backend) | git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/s3 | s3-v0.0.1 |
| <a name="module_s3_locking_table"></a> [s3\_locking\_table](#module\_s3\_locking\_table) | git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/dynamodb | dynamodb-v0.0.1 |
| <a name="module_tags"></a> [tags](#module\_tags) | git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/tags | tags-v0.0.1 |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/4.48.0/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Application name | `string` | `"terraform-state"` | no |
| <a name="input_enable_locking_table"></a> [enable\_locking\_table](#input\_enable\_locking\_table) | Boolean whether to create a dynamodb locking table | `bool` | `true` | no |
| <a name="input_env"></a> [env](#input\_env) | Environment | `string` | `"global"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Owner | `string` | `"lb"` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"us-west-2"` | no |
| <a name="input_team"></a> [team](#input\_team) | Team | `string` | `"casab"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_s3_bucket_id"></a> [s3\_bucket\_id](#output\_s3\_bucket\_id) | S3 bucket id |
| <a name="output_s3_locking_table"></a> [s3\_locking\_table](#output\_s3\_locking\_table) | S3 bucket id |
