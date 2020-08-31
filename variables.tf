# RDS Postgres Security Group
variable "db_sg_name" {
  description = "RDS Postgres Security Group name"
  type        = string
  default     = "rds_postgres_sg"
}

variable "vpc_id" {
  description = "RDS Postgres Security Group sg_ingress_cidr_block"
  type        = string
  default     = "vpc-0cc5483cd2bbada0d"
}

variable "from_port" {
  description = "RDS Postgres Security Group incoming port"
  type        = string
  default     = "5432"
}

variable "to_port" {
  description = "RDS Postgres Security Group outgoing port"
  type        = string
  default     = "5432"
}

variable "security_groups" {
  description = "RDS Postgres Security Group sg_ingress_cidr_block"
  type        = string
  default     = "sg-0cf9172a8d57dd589"
}

