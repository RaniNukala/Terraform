resource "aws_vpc" "prod_vpc" {
  cidr_block           = var.vpc_prod_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = { Name = "prod-vpc" }
}
