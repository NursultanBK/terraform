resource "aws_vpc" "vpc_for_db" {

  cidr_block              = var.vpc_cidr_block
  enable_dns_support      = var.enable_dns_support
  enable_dns_hostnames    = var.enable_dns_hostnames

  tags                    = {
    Name                  = var.vpc_name_tag
    Environment           = var.vpc_env_tag
  }
}




resource "aws_subnet" "db_subnets" {
  count                   = length(var.availability_zones)
  vpc_id                  = "${aws_vpc.vpc_for_db.id}"
  cidr_block              = var.db_subnet_cidr[count.index]
  availability_zone       = var.availability_zones[count.index]
  map_public_ip_on_launch = false
  tags                    = {
    Name                  = var.db_subnet_name[count.index]
    Environment           = var.db_subnet_env_tag[count.index]
  }
}
