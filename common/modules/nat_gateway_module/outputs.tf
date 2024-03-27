output "nat_gateway" {
  value       = aws_nat_gateway.private.*.id
}