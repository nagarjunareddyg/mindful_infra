module "mc-prod-vpc" {
  source = "../../common/modules/vpc_module"

  vpc_cidr_block = var.vpc_cidr_block
} 


module "mc-prod-public-subnet" {
  source = "../../common/modules/public_subnet_module"

  public_azs = var.public_azs
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
  vpc_id = module.mc-prod-vpc.vpc_id
  vpc_cidr_block = var.vpc_cidr_block
  public_igw = module.mc-prod-vpc.vpc_igw
}

module "mc-prod-private-subnet" {
  source = "../../common/modules/private_subnet_module"

  private_azs = var.private_azs
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  vpc_id = module.mc-prod-vpc.vpc_id
  vpc_cidr_block = var.vpc_cidr_block
}

module "mc-prod-nat-gateway" {
  source = "../../common/modules/nat_gateway_module"

  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks
  private_subnet_ids = module.mc-prod-private-subnet.*.private_subnet_id
  public_subnet_ids = module.mc-prod-public-subnet.*.public_subnet_id
}

resource "aws_route" "prod_private_route_1" {
  route_table_id            = "${module.mc-prod-private-subnet.route_table[0]}"
  gateway_id = "${module.mc-prod-nat-gateway.nat_gateway[0]}"
  destination_cidr_block    = "0.0.0.0/0"
  depends_on                = [module.mc-prod-private-subnet]
}

resource "aws_route" "prod_private_route_2" {
  route_table_id            = "${module.mc-prod-private-subnet.route_table[1]}"
  gateway_id = "${module.mc-prod-nat-gateway.nat_gateway[1]}"
  destination_cidr_block    = "0.0.0.0/0"
  depends_on                = [module.mc-prod-private-subnet]
}