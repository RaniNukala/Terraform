# Secondary Remote Target VPC
resource "aws_vpc" "corp_vpc" {
  cidr_block           = var.vpc_corp_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = { Name = "corp-vpc" }
}

# Peering Connection Link
resource "aws_vpc_peering_connection" "prod_to_corp" {
  vpc_id      = aws_vpc.prod_vpc.id
  peer_vpc_id = aws_vpc.corp_vpc.id
  auto_accept = true
  tags        = { Name = "prod-to-corp-peering" }
}

# Route rule passing traffic through the Peering connection
resource "aws_route" "peering_route" {
  route_table_id            = aws_route_table.private_rt.id
  destination_cidr_block    = var.vpc_corp_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.prod_to_corp.id
}
