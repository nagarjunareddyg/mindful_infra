output "public_subnet_cidr_block" {
  value       = aws_subnet.public.*.cidr_block
}

output "public_subnet_id" {
  value       = aws_subnet.public.*.id
}
