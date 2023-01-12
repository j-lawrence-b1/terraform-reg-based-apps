# -----------------------------------------
# Optional inputs
# -----------------------------------------
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "test-vpc"
}

variable "env" {
  description = "One of 'prd', 'stg', or 'dev'"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner name"
  type        = string
  default     = "lb"
}

variable "team" {
  description = "Team name"
  type        = string
  default     = "casab"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/20" # 4096 IPs from 10.0.0.0 to 10.0.15.255.
}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
  default     = [] # Use ["10.0.2.0/24", "10.0.3.0/24"] if you want private subnets.
}

variable "persistence_subnets" {
  description = "List of data persistence subnet CIDR blocks"
  type        = list(string)
  default     = [] # Use ["10.0.4.0/24", "10.0.5.0/24"] if you want presistence subnets.
}

variable "nat_eip_ids" {
  description = "List of NAT EIP IDs if created elsewhere."
  type        = list(string)
  default     = []
}
