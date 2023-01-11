variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "terraform-state"
}

variable "env" {
  description = "Environment"
  type        = string
  default     = "global"
}

variable "owner" {
  description = "Owner"
  type        = string
  default     = "lb"
}

variable "team" {
  description = "Team"
  type        = string
  default     = "casab"
}

variable "enable_locking_table" {
  description = "Boolean whether to create a dynamodb locking table"
  type        = bool
  default     = true
}
