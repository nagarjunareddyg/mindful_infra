resource "aws_db_instance" "default" {
  db_name              = var.db_name
  db_subnet_group_name = var.db_subnet_group_name
  identifier = var.db_identifier
  storage_type = var.db_storage_type
  storage_encrypted = var.db_storage_encrypted
  allocated_storage    = var.db_allocated_storage
  max_allocated_storage = var.db_max_allocated_storage
  multi_az = var.db_multi_az
  vpc_security_group_ids = var.db_vpc_security_group_ids
  engine               = var.db_engine
  engine_version       = var.db_engine_version
  auto_minor_version_upgrade = false
  instance_class       = var.db_instance_class
  port = var.db_port
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.db_parameter_group_name
  option_group_name = var.db_option_group_name
  skip_final_snapshot  = true
  apply_immediately = var.db_apply_immediately
  backup_retention_period = var.db_backup_retention_period
  backup_window = var.db_backup_window
  maintenance_window = var.db_maintenance_window
  delete_automated_backups = false
  deletion_protection = var.db_deletion_protection
  enabled_cloudwatch_logs_exports = var.db_enabled_cloudwatch_logs_exports
}
