#### VPC NETWORK ####
region = "us-east-2"
env_prefix = "mc-stage"
env = "stage"
vpc_cidr_block = "10.1.0.0/16"
public_azs = ["us-east-2a", "us-east-2b"]
public_subnet_cidr_blocks = ["10.1.0.0/24", "10.1.1.0/24"] 
private_azs = ["us-east-2a", "us-east-2b"]
private_subnet_cidr_blocks = ["10.1.2.0/24", "10.1.3.0/24"]


####### ALB ######
alb_internal = false
alb_sg_cidr = [
    "0.0.0.0/0"
]

#### ALB TARGET GROUPS ####
alb_tg_port = 80
alb_tg_protocol = "HTTP"
alb_tg_target_type = "ip"
alb_tg_health_path = "/healthcheck"
alb_tg_healthy_threshold = 3
alb_tg_interval = 300
# alb_tg_health_port = 443
alb_tg_health_protocol = "HTTP"
alb_tg_health_timeout = 120
alb_tg_unhealthy_threshold = 3

###### ECS SERVICE #####
ecs_desired_count = "1"
ecs_container_port = "8080"
ecs_sg_ingress_from_port = "8080"
ecs_sg_ingress_to_port = "8080"
ecs_sg_egress_from_port = "0"
ecs_sg_egress_to_port = "0"

###### RDS #####
db_storage_type = "standard"
db_storage_encrypted = true
db_allocated_storage = 10
db_max_allocated_storage = null
db_multi_az = false
db_vpc_security_group_ids = null
db_engine = "postgres"
db_engine_version = 14.7
db_instance_class = "db.t3.micro"
db_port = 5432
db_username = "aptible"
db_parameter_group_name = null
db_option_group_name = null
db_apply_immediately = true
db_backup_retention_period = 0
db_backup_window = null
db_maintenance_window = null
db_deletion_protection = false
db_enabled_cloudwatch_logs_exports = null








