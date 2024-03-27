resource "aws_lb" "main" {
  name               = var.alb_name
  internal           = var.alb_internal
  load_balancer_type = "application"
  security_groups    = [var.alb_sgs[0]]
  subnets            = [var.alb_subnets[0], var.alb_subnets[1]]
  enable_cross_zone_load_balancing = true

  enable_deletion_protection = false

#   access_logs {
#     bucket  = aws_s3_bucket.lb_logs.id
#     prefix  = "test-lb"
#     enabled = true
#   }
}

resource "aws_lb_target_group" "default" {
  name        = var.alb_tg_name
  port        = var.alb_tg_port
  protocol    = var.alb_tg_protocol
  target_type = var.alb_tg_target_type
  vpc_id      = var.alb_tg_vpc_id
  health_check {
    path = var.alb_tg_health_path
    healthy_threshold = var.alb_tg_healthy_threshold
    interval = var.alb_tg_interval
    # port = var.alb_tg_health_port
    protocol = var.alb_tg_health_protocol
    timeout = var.alb_tg_health_timeout
    unhealthy_threshold = var.alb_tg_unhealthy_threshold
    matcher = "200,301"
  }
}


