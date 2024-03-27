output "private_subnet_cidr_block" {
  value       = aws_subnet.private.*.cidr_block
}

output "route_table" {
  value       = aws_route_table.private.*.id
}

output "private_subnet_id" {
  value       = aws_subnet.private.*.id
}
