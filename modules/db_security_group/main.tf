resource "aws_security_group" "rds_postgres_sg" {
  name        = var.db_sg_name
  description = "RDS Postgres SG"
  vpc_id      = var.vpc_id

  ingress {
    description       = "RDS Postgres incoming traffic"
    from_port         = var.from_port
    to_port           = var.to_port
    protocol          = "tcp"
    security_groups   = [var.security_groups]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}