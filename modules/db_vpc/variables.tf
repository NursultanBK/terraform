
variable "vpc_cidr_block" {
  type = string
}

variable "enable_dns_support" {
  type = bool
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "vpc_name_tag" {
  type = string
}

variable "vpc_env_tag" {
  type = string
}

variable "availability_zones" {
  type = list
}

variable "db_subnet_name" {
  type = list
}

variable "db_subnet_cidr" {
  type = list
}

variable "db_subnet_env_tag" {
  type = list
}