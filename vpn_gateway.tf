resource "aws_vpn_gateway" "vpg" {
  vpc_id = aws_vpc.prod_vpc.id
  tags   = { Name = "prod-vpn-gateway" }
}
