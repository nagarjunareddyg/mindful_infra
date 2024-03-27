resource "aws_security_group" "ecs_service" {
  name        = "${var.ecs_service_name}-sg"
  description = "${var.ecs_service_name}-sg"
  vpc_id      = var.ecs_service_vpc_id
}

resource "aws_security_group_rule" "ecs_service_ingress" {
  type              = "ingress"
  from_port         = var.ecs_sg_ingress_from_port
  to_port           = var.ecs_sg_ingress_to_port
  protocol          = "tcp"
  # cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = join("", aws_security_group.ecs_service.*.id)
  source_security_group_id = var.ecs_alb_security_group
}

resource "aws_security_group_rule" "http_ecs_service_ingress" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  # cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = join("", aws_security_group.ecs_service.*.id)
  source_security_group_id = var.ecs_alb_security_group
}

resource "aws_security_group_rule" "https_ecs_service_ingress" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  # cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = join("", aws_security_group.ecs_service.*.id)
  source_security_group_id = var.ecs_alb_security_group
}

resource "aws_security_group_rule" "ecs_service_egress" {
  type              = "egress"
  from_port         = var.ecs_sg_egress_from_port
  to_port           = var.ecs_sg_egress_to_port
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = join("", aws_security_group.ecs_service.*.id)
}
