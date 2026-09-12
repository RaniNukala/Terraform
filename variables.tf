variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_prod_cidr" {
  type    = string
  default = "10.10.0.0/16"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.10.1.0/24"
}

variable "private_subnet_cidr" {
  type    = string
  default = "10.10.2.0/24"
}

variable "vpc_corp_cidr" {
  type    = string
  default = "172.16.0.0/16"
}

variable "instance_type" {
  type    = string
  default = "t2.micro" # Free Tier
}
