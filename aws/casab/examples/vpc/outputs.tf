output "vpc_id" {
  description = "VPC id"
  value       = module.vpc.vpc_id
}

output "name" {
  description = "VPC name"
  value       = module.vpc.name
}

output "public_subnets" {
  description = "Public subnet ids"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "Private subnet ids"
  value       = module.vpc.private_subnets
}

output "database_subnets" {
  description = "Database subnet ids"
  value       = module.vpc.database_subnets
}

output "nat_public_ips" {
  description = "NAT public ips"
  value       = length(var.private_subnets) > 0 ? module.vpc.nat_public_ips : []
}
