#Disabled while testing gitlab pipeline to avoid delay.
module "alpha_rds" {
  source                 = "../modules/10.rds"
  db_subnet_group_name   = var.db_subnet_group_name
  private_subnets        = module.alpha_vpc_1.private_subnets_id
  allocated_storage      = "10"
  engine                 = "mysql"
  engine_version         = "8.0.28"
  identifier             = var.identifier
  instance_class         = "db.t2.medium"
  db_name                = var.db_name
  vpc_security_group_ids = module.alpha_sg_1.sg_id
  username               = "adminsree"
  password               = module.alpha_secret_rds.rds_secret
}