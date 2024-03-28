output "alb_tg_arn" {
  value       = aws_lb_target_group.default.*.arn
}

output "alb_arn" {
  value       = aws_lb.main.*.arn
}