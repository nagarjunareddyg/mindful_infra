variable "env_prefix" {
  default = ""
}

variable "vpc_cidr_block" {
  default = ""
}

variable "public_subnet_cidr_blocks" {
  default = ""
}

variable "private_subnet_cidr_blocks" {
  default = ""
}

variable "public_azs" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "private_azs" {
  type = list
  default = ["us-east-1c", "us-east-1d"]
}
