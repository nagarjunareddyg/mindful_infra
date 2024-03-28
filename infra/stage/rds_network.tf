module "mc-stage-db-subnet" {
  source = "../../common/modules/private_subnet_module"

  private_azs = ["us-east-2a"]
  private_subnet_cidr_blocks = ["10.1.5.0/24"]
  vpc_id = module.mc-stage-vpc.vpc_id
  vpc_cidr_block = module.mc-stage-vpc.vpc_cidr
}

module "mc-stage-db-subnet-2" {
  source = "../../common/modules/private_subnet_module"

  private_azs = ["us-east-2b"]
  private_subnet_cidr_blocks = ["10.1.6.0/24"]
  vpc_id = module.mc-stage-vpc.vpc_id
  vpc_cidr_block = module.mc-stage-vpc.vpc_cidr
}

resource "aws_db_subnet_group" "mc-stage-db-subnet-group" {
  name       = "mc-stage-db-subnet-group"
  subnet_ids = ["${data.aws_subnet.mc-stage-db-subnet.id}", "${data.aws_subnet.mc-stage-db-subnet-2.id}"]
}

data "aws_subnet" "mc-stage-db-subnet" {
  id = module.mc-stage-db-subnet.private_subnet_id[0]
}

data "aws_subnet" "mc-stage-db-subnet-2" {
  id = module.mc-stage-db-subnet-2.private_subnet_id[0]
}

