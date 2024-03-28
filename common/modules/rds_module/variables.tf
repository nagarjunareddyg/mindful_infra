variable "env_prefix" {
  default = ""
}

variable "db_subnet_group_name"{
  default = ""
}

variable "db_subnet_ids" {
  default = []
  type = list(string)
}

variable "db_name" {
  default = ""
}

variable "db_identifier" {
  default = ""
}

variable "db_storage_type" {
  default = ""
}

variable "db_storage_encrypted" {
  default = ""
}

variable "db_allocated_storage" {
  default = ""
}

variable "db_max_allocated_storage" {
  default = ""
}

variable "db_multi_az" {
  default = ""
}

variable "db_vpc_security_group_ids" {
  default = ""
}

variable "db_engine" {
  default = ""
}

variable "db_engine_version" {
  default = ""
}

variable "db_instance_class" {
  default = ""
}

variable "db_port" {
  default = ""
}

variable "db_username" {
  default = ""
}

variable "db_password" {
  default = ""
}

variable "db_parameter_group_name" {
  default = ""
}

variable "db_option_group_name" {
  default = ""
}

variable "db_apply_immediately" {
  default = ""
}

variable "db_backup_retention_period" {
  default = ""
}

variable "db_backup_window" {
  default = ""
}

variable "db_maintenance_window" {
  default = ""
}

variable "db_deletion_protection" {
  default = ""
}

variable "db_enabled_cloudwatch_logs_exports" {
  default = ""
}
