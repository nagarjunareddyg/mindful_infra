resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = true

  # tags = {
  #   Name = "main"
  # }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  depends_on = [
    aws_vpc.main
  ]
}
