# locals {
#   public_count = "${length(var.public_azs)}"
# }

# data "aws_availability_zones" "available" {
#   state = "available"
# }

resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidr_blocks)
  vpc_id     = var.vpc_id
  cidr_block = element(var.public_subnet_cidr_blocks, count.index)
  availability_zone = element(var.public_azs, count.index)
}

resource "aws_route_table" "public" {
  vpc_id = var.vpc_id
}

resource "aws_route" "public" {
  route_table_id            = aws_route_table.public.id
  gateway_id = var.public_igw
  destination_cidr_block    = "0.0.0.0/0"
  depends_on                = [aws_route_table.public]
}

resource "aws_route_table_association" "public" {
  count = length(var.public_subnet_cidr_blocks)
  subnet_id      = element(aws_subnet.public.*.id, count.index)
  route_table_id = aws_route_table.public.id
}
