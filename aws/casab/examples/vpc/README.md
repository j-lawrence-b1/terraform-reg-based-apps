## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.3.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.48.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | 3.2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../../..//aws/casab/modules/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [random_string.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Application name | `string` | `"test-vpc"` | no |
| <a name="input_database_subnets"></a> [database\_subnets](#input\_database\_subnets) | List of data persistence subnet CIDR blocks | `list(string)` | <pre>[<br>  "10.0.0.128/27",<br>  "10.0.0.160/27"<br>]</pre> | no |
| <a name="input_enable_database_public_access"></a> [enable\_database\_public\_access](#input\_enable\_database\_public\_access) | Boolean whether to enable internet access to the persistence subnets (not recommended for production). | `bool` | `true` | no |
| <a name="input_env"></a> [env](#input\_env) | One of 'global', 'prd', 'stg', or 'dev' | `string` | `"dev"` | no |
| <a name="input_nat_eip_ids"></a> [nat\_eip\_ids](#input\_nat\_eip\_ids) | List of NAT EIP IDs if created elsewhere. | `list(string)` | `[]` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Owner name | `string` | `"lb"` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | List of private subnet CIDR blocks | `list(string)` | <pre>[<br>  "10.0.0.64/27",<br>  "10.0.0.96/27"<br>]</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | List of public subnet CIDR blocks | `list(string)` | <pre>[<br>  "10.0.0.0/27",<br>  "10.0.0.32/27"<br>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"us-west-2"` | no |
| <a name="input_team"></a> [team](#input\_team) | Team name | `string` | `"casab"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC CIDR block | `string` | `"10.0.0.0/24"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_subnets"></a> [database\_subnets](#output\_database\_subnets) | Database subnet ids |
| <a name="output_name"></a> [name](#output\_name) | VPC name |
| <a name="output_nat_public_ips"></a> [nat\_public\_ips](#output\_nat\_public\_ips) | NAT public ips |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | Private subnet ids |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | Public subnet ids |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC id |
