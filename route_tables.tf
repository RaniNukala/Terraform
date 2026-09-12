#-----------------
# Public Routing
#-----------------
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.prod_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.prod_igw.id
  }
  tags = { Name = "prod-public-rt" }
}

resource "aws_route_table_association" "pub_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}


#-----------------
# Private Routing
#-----------------
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.prod_vpc.id
  tags   = { Name = "prod-private-rt" }
}

resource "aws_route_table_association" "priv_assoc" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private_rt.id
}
