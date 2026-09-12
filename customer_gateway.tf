resource "aws_customer_gateway" "cgw" {
  bgp_asn    = 65000
  ip_address = "1.2.3.4" # Replace with your corporate edge static public IP
  type       = "ipsec.1"
  tags       = { Name = "on-prem-customer-gateway" }
}
