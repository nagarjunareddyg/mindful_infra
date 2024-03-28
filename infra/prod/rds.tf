module "mc-prod-rds" {
  source = "../../common/modules/rds_module"

  db_subnet_group_name = aws_db_subnet_group.mc-prod-db-subnet-group.id
  db_name = "mcproddb"
  db_identifier = "mc-${var.env}-rds"
  db_storage_type = var.db_storage_type
  db_storage_encrypted = var.db_storage_encrypted
  db_allocated_storage = var.db_allocated_storage
  db_max_allocated_storage = var.db_max_allocated_storage
  db_multi_az = var.db_multi_az
  db_vpc_security_group_ids = var.db_vpc_security_group_ids
  db_engine = var.db_engine
  db_engine_version = var.db_engine_version
  db_instance_class = var.db_instance_class
  db_port = var.db_port
  db_username = var.db_username
  db_password = "${data.aws_ssm_parameter.PROD_DB_PASSWORD.value}"
  db_parameter_group_name = var.db_parameter_group_name
  db_option_group_name = var.db_option_group_name
  db_apply_immediately = var.db_apply_immediately
  db_backup_retention_period = var.db_backup_retention_period
  db_backup_window = var.db_backup_window
  db_maintenance_window = var.db_maintenance_window
  db_deletion_protection = var.db_deletion_protection
  db_enabled_cloudwatch_logs_exports = var.db_enabled_cloudwatch_logs_exports
}

