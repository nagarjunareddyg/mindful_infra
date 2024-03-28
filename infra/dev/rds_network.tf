module "mc-dev-db-subnet" {
  source = "../../common/modules/private_subnet_module"

  private_azs = ["us-east-1a"]
  private_subnet_cidr_blocks = ["10.0.5.0/24"]
  vpc_id = module.mc-dev-vpc.vpc_id
  vpc_cidr_block = module.mc-dev-vpc.vpc_cidr
}

module "mc-dev-db-subnet-2" {
  source = "../../common/modules/private_subnet_module"

  private_azs = ["us-east-1b"]
  private_subnet_cidr_blocks = ["10.0.6.0/24"]
  vpc_id = module.mc-dev-vpc.vpc_id
  vpc_cidr_block = module.mc-dev-vpc.vpc_cidr
}

resource "aws_db_subnet_group" "mc-dev-db-subnet-group" {
  name       = "mc-dev-db-subnet-group"
  subnet_ids = ["${data.aws_subnet.mc-dev-db-subnet.id}", "${data.aws_subnet.mc-dev-db-subnet-2.id}"]
}

data "aws_subnet" "mc-dev-db-subnet" {
  id = module.mc-dev-db-subnet.private_subnet_id[0]
}

data "aws_subnet" "mc-dev-db-subnet-2" {
  id = module.mc-dev-db-subnet-2.private_subnet_id[0]
}

