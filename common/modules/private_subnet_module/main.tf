# locals {
#   public_count = "${length(var.public_azs)}"
# }

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "private" {
  count = length(var.private_subnet_cidr_blocks)
  vpc_id     = var.vpc_id
  cidr_block = element(var.private_subnet_cidr_blocks, count.index)
  # cidr_block = cidrsubnet(var.vpc_cidr_block, var.subnet_newbits, count.index)
  availability_zone = element(var.private_azs, count.index)
}

resource "aws_route_table" "private" {
  count = length(var.private_subnet_cidr_blocks)
  vpc_id = var.vpc_id
}

resource "aws_route_table_association" "private" {
  count = length(var.private_subnet_cidr_blocks)
  subnet_id      = element(aws_subnet.private.*.id, count.index)
  route_table_id = element(aws_route_table.private.*.id, count.index)
}
