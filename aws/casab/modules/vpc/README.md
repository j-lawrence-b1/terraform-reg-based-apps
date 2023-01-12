## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tags"></a> [tags](#module\_tags) | git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/tags | tags-v0.0.1 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git@github.com:j-lawrence-b1/terraform-reg-based-modules.git//aws/modules/vpc | vpc-v0.0.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Application name | `string` | `"test-vpc"` | no |
| <a name="input_env"></a> [env](#input\_env) | One of 'prd', 'stg', or 'dev' | `string` | `"dev"` | no |
| <a name="input_nat_eip_ids"></a> [nat\_eip\_ids](#input\_nat\_eip\_ids) | List of NAT EIP IDs if created elsewhere. | `list(string)` | `[]` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Owner name | `string` | `"lb"` | no |
| <a name="input_persistence_subnets"></a> [persistence\_subnets](#input\_persistence\_subnets) | List of data persistence subnet CIDR blocks | `list(string)` | `[]` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | List of private subnet CIDR blocks | `list(string)` | `[]` | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | List of public subnet CIDR blocks | `list(string)` | <pre>[<br>  "10.0.0.0/24",<br>  "10.0.1.0/24"<br>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"us-west-2"` | no |
| <a name="input_team"></a> [team](#input\_team) | Team name | `string` | `"casab"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC CIDR block | `string` | `"10.0.0.0/20"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_subnet_ids"></a> [database\_subnet\_ids](#output\_database\_subnet\_ids) | Database subnet ids |
| <a name="output_nat_public_ips"></a> [nat\_public\_ips](#output\_nat\_public\_ips) | NAT public ips |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | Private subnet ids |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | Public subnet ids |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC id |
| <a name="output_vpc_name"></a> [vpc\_name](#output\_vpc\_name) | VPC name |
