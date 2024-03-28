output "vpc_id" {
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  value       = aws_vpc.main.cidr_block
}

output "vpc_igw" {
  value       = aws_internet_gateway.main.id
}
