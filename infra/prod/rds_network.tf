module "mc-prod-db-subnet" {
  source = "../../common/modules/private_subnet_module"

  private_azs = ["us-west-1a"]
  private_subnet_cidr_blocks = ["10.3.5.0/24"]
  vpc_id = module.mc-prod-vpc.vpc_id
  vpc_cidr_block = module.mc-prod-vpc.vpc_cidr
}

module "mc-prod-db-subnet-2" {
  source = "../../common/modules/private_subnet_module"

  private_azs = ["us-west-1b"]
  private_subnet_cidr_blocks = ["10.3.6.0/24"]
  vpc_id = module.mc-prod-vpc.vpc_id
  vpc_cidr_block = module.mc-prod-vpc.vpc_cidr
}

resource "aws_db_subnet_group" "mc-prod-db-subnet-group" {
  name       = "mc-prod-db-subnet-group"
  subnet_ids = ["${data.aws_subnet.mc-prod-db-subnet.id}", "${data.aws_subnet.mc-prod-db-subnet-2.id}"]
}

data "aws_subnet" "mc-prod-db-subnet" {
  id = module.mc-prod-db-subnet.private_subnet_id[0]
}

data "aws_subnet" "mc-prod-db-subnet-2" {
  id = module.mc-prod-db-subnet-2.private_subnet_id[0]
}

