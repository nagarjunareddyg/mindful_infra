module "mc-dev-ecs-cluster" {
  source = "../../common/modules/ecs_cluster_module"

  ecs_cluster_name = "mc-${var.env}-ecs-cluster"
  ecs_cluster_log_group_name = "mindfulcare-app"
} 
