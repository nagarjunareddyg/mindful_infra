resource "aws_security_group" "mc_stage_app_alb_sg" {
  name        = "mc-${var.env}-app-alb-sg"
  description = "mc-${var.env}-app alb security group"
  vpc_id      = module.mc-stage-vpc.vpc_id

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = var.alb_sg_cidr
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = var.alb_sg_cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
