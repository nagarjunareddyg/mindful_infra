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
  type = list(string)
}

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
