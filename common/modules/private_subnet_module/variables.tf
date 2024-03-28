variable "env_prefix" {
  default = ""
}

variable "vpc_cidr_block" {
  default = ""
}

variable "vpc_id" {
  default = ""
}

variable "private_count" {
  default = ""
}

variable "public_subnet_cidr_blocks" {
  default = []
}

variable "private_subnet_cidr_blocks" {
  default = []
}

variable "public_azs" {
  type = list(string)
  default = []
}

variable "private_azs" {
  type = list
  default = []
}

variable "subnet_newbits" {
  default = ""
}