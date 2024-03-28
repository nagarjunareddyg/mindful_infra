module "mc-dev-app" {
  source = "../../common/modules/ecs_service_module"

  ecs_cluster = "${module.mc-dev-ecs-cluster.ecs_cluster_id[0]}"
  ecs_service_name = "mc-${var.env}-app-service"
  ecs_task_definition = aws_ecs_task_definition.mc_dev_app.arn
  ecs_desired_count = var.ecs_desired_count
  ecs_service_subnets = module.mc-dev-private-subnet.private_subnet_id
  ecs_lb_tg_arn = module.mc-dev-alb.alb_tg_arn[0]
  ecs_container_name = "mc-${var.env}-app"
  ecs_container_port = var.ecs_container_port
  ecs_sg_ingress_from_port = var.ecs_sg_ingress_from_port
  ecs_sg_ingress_to_port = var.ecs_sg_ingress_to_port
  ecs_sg_egress_from_port = var.ecs_sg_egress_from_port
  ecs_sg_egress_to_port = var.ecs_sg_egress_to_port
  ecs_service_vpc_id = module.mc-dev-vpc.vpc_id
  ecs_alb_security_group = "${aws_security_group.mc_dev_app_alb_sg.id}"
}

# module "mc-sandbox-app" {
#   source = "../../common/modules/ecs_service_module"

#   ecs_cluster = "${module.mc-dev-ecs-cluster.ecs_cluster_id[0]}"
#   ecs_service_name = "mc-sandbox-app-service"
#   ecs_task_definition = aws_ecs_task_definition.mc_dev_app.arn
#   ecs_desired_count = var.ecs_desired_count
#   ecs_service_subnets = module.mc-dev-private-subnet.private_subnet_id
#   ecs_lb_tg_arn = module.mc-dev-alb.alb_tg_arn[0]
#   ecs_container_name = "mc-sandbox-app"
#   ecs_container_port = var.ecs_container_port
#   ecs_sg_ingress_from_port = var.ecs_sg_ingress_from_port
#   ecs_sg_ingress_to_port = var.ecs_sg_ingress_to_port
#   ecs_sg_egress_from_port = var.ecs_sg_egress_from_port
#   ecs_sg_egress_to_port = var.ecs_sg_egress_to_port
#   ecs_service_vpc_id = module.mc-dev-vpc.vpc_id
#   ecs_alb_security_group = "${aws_security_group.mc_dev_app_alb_sg.id}"
# }
