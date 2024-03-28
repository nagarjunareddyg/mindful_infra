resource "aws_eip" "private" {
  count = length(var.private_subnet_cidr_blocks)
  vpc      = true
}

resource "aws_nat_gateway" "private" {
  count = length(var.private_subnet_cidr_blocks)
  allocation_id = element(aws_eip.private.*.id, count.index)
  subnet_id     = "${element(var.public_subnet_ids, count.index)[0]}"
}