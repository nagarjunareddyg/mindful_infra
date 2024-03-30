##### VPC VARIABLES ########

variable "region" {
  default = ""
}

variable "env_prefix" {
  default = ""
}

variable "env" {
  default = ""
}

variable "vpc_cidr_block" {
  default = ""
}

variable "public_count" {
  default = ""
}

variable "private_count" {
  default = ""
}

variable "public_subnet_cidr_blocks" {
  default = []
}

variable "private_subnet_cidr_blocks" {
  default = []
}

variable "public_azs" {
  type = list(string)
  default = []
}

variable "private_azs" {
  type = list(string)
  default = []
}

variable "private_subnet_ids" {
  default = []
}

variable "public_subnet_ids" {
  default = []
}

variable "public_igw" {
  default = ""
}

variable "certificate_arn" {
  default = ""
}


#### RDS Variables ###

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

####### ECS CLUSTER #######

variable "ecs_cluster_name" {
  default = ""
}

variable "ecs_cluster_log_group_name" {
  default = ""
}


#### ECS SERVICE ######

variable "ecs_service_name" {
  default = ""
}

variable "ecs_cluster" {
  default = ""
}

variable "ecs_task_definition" {
  default = ""
}

variable "ecs_desired_count" {
  default = ""
}

variable "ecs_service_subnets" {
  default = ""
}

# variable "ecs_service_security_groups" {
#   default = ""
# }

variable "ecs_lb_tg_arn" {
  default = ""
}

variable "ecs_container_name" {
  default = ""
}

variable "ecs_container_port" {
  default = ""
}

variable "ecs_sg_ingress_from_port" {
  default = ""
}

variable "ecs_sg_ingress_to_port" {
  default = ""
}

variable "ecs_sg_egress_from_port" {
  default = ""
}

variable "ecs_sg_egress_to_port" {
  default = ""
}

variable "ecs_service_vpc_id" {
  default = ""
}


###### SERVICE DISCOVERY ######

variable "service_discovery_namespace" {
  default = ""
}

variable "service_discovery_vpc_id" {
  default = ""
}

variable "service_discovery_name" {
  default = ""
}

variable "ecs_service_discovery_registry_arn" {
  default = ""
}

variable "ecs_alb_security_group" {
  default = ""
}


###### ALB ######

variable "alb_name" {
  default = ""
}

variable "alb_internal" {
  default = ""
}

variable "alb_sgs" {
  default = []
  type = list(string)
}

variable "alb_subnets" {
  default = []
  type = set(string)
}

variable "alb_sg_cidr" {
  default = []
  type = list(string)
}

###### ALB TARGET GROUPS ######

variable "alb_tg_name" {
  default = ""
}

variable "alb_tg_port" {
  default = ""
}

variable "alb_tg_protocol" {
  default = ""
}

variable "alb_tg_target_type" {
  default = ""
}

variable "alb_tg_vpc_id" {
  default = ""
}

variable "alb_tg_health_path" {
  default = ""
}

variable "alb_tg_healthy_threshold" {
  default = ""
}

variable "alb_tg_interval" {
  default = ""
}

variable "alb_tg_health_port" {
  default = ""
}

variable "alb_tg_health_protocol" {
  default = ""
}

variable "alb_tg_health_timeout" {
  default = ""
}

variable "alb_tg_unhealthy_threshold" {
  default = ""
}

###### ALB LISTNER ######

variable "alb_listener_arn" {
  default = ""
}

variable "alb_listener_port" {
  default = ""
}

variable "alb_listener_protocol" {
  default = ""
}

variable "alb_listener_ssl_policy" {
  default = ""
}

variable "alb_listener_certificate_arn" {
  default = ""
}

variable "alb_listener_tg_arn" {
  default = ""
}

