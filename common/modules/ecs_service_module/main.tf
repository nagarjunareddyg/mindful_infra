resource "aws_ecs_service" "default" {
  name            = var.ecs_service_name
  cluster         = var.ecs_cluster
  task_definition = var.ecs_task_definition
  desired_count   = var.ecs_desired_count
  enable_execute_command =  true
  force_new_deployment = true
#   depends_on      = [aws_iam_role_policy.foo]

  network_configuration {
    subnets  = var.ecs_service_subnets
    security_groups = aws_security_group.ecs_service.*.id
    assign_public_ip = true
  }
  load_balancer {
    target_group_arn = var.ecs_lb_tg_arn
    container_name   = var.ecs_container_name
    container_port   = var.ecs_container_port
  }
  # service_registries {
  #   registry_arn = var.ecs_service_discovery_registry_arn
  #   container_name   = var.ecs_container_name
  #   container_port   = var.ecs_container_port
  # }
}
