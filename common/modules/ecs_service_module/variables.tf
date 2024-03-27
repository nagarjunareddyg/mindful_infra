variable "region" {
  default = ""
}

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

variable "ecs_service_discovery_registry_arn" {
  default = ""
}

variable "ecs_alb_security_group" {
  default = ""
}
