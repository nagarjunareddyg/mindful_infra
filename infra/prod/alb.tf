module "mc-prod-alb" {
  source = "../../common/modules/alb_module"

  alb_name = "${var.env}-app-alb"
  alb_internal = var.alb_internal
  alb_sgs = [aws_security_group.mc_prod_app_alb_sg.id]
  alb_subnets = ["${module.mc-prod-public-subnet.public_subnet_id[0]}", "${module.mc-prod-public-subnet.public_subnet_id[1]}"]
  alb_tg_name = "mc-${var.env}-app-tg"
  alb_tg_port = var.alb_tg_port
  alb_tg_protocol = var.alb_tg_protocol
  alb_tg_target_type = var.alb_tg_target_type
  alb_tg_vpc_id = module.mc-prod-vpc.vpc_id
  alb_tg_health_path = var.alb_tg_health_path
  alb_tg_healthy_threshold = var.alb_tg_healthy_threshold
  alb_tg_interval = var.alb_tg_interval
  alb_tg_health_port = var.alb_tg_health_port
  alb_tg_health_protocol = var.alb_tg_health_protocol
  alb_tg_health_timeout = var.alb_tg_health_timeout
  alb_tg_unhealthy_threshold = var.alb_tg_unhealthy_threshold
}

resource "aws_lb_listener" "mc-prod-alb-https-listener" {
  load_balancer_arn = module.mc-prod-alb.alb_arn[0]
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:us-west-1:560668774271:certificate/266c55a7-4b9a-442b-adb8-400fa5c2bc06"

  default_action {
    type             = "forward"
    target_group_arn = module.mc-prod-alb.alb_tg_arn[0]
  }
}

resource "aws_lb_listener" "mc-prod-alb-http-listener" {
  load_balancer_arn = module.mc-prod-alb.alb_arn[0]
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "redirect"
    
    redirect {
      port = "443"
      protocol = "HTTPS"
      status_code = "HTTP_301"
    }
  }

  # default_action {
  #   type             = "forward"
  #   target_group_arn = module.mc-dev-alb.alb_tg_arn[0]
  # }
}