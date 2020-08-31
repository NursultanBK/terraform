module "vpc_for_db" {
  source                = "./modules/db_vpc"
  vpc_cidr_block        = "10.0.0.0/16"
  enable_dns_support    = "true"
  enable_dns_hostnames  = "false"
  vpc_name_tag          = "vpc_for_database"
  vpc_env_tag           = "dev"
  availability_zones    = ["us-east-1a","us-east-1b","us-east-1c"]
  db_subnet_name        = ["db_subnet_a","db_subnet_b","db_subnet_c"]
  db_subnet_cidr        = ["10.0.20.0/24","10.0.21.0/24","10.0.22.0/24"]
  db_subnet_env_tag     = ["dev","dev","dev"]
}

module "rds_postgres_sg" {
  source = "./modules/db_security_group"

  db_sg_name        = var.db_sg_name
  vpc_id            = var.vpc_id
  from_port         = var.from_port
  to_port           = var.to_port
  security_groups   = var.security_groups  
}