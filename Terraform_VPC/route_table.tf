#Public Route Table
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.custom_vpc.id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.gw_vpc.id
  }



  tags = {
    Name = "public-route-table"
  }
}

#Private Route Table
/*
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.custom_vpc.id

  route {
    cidr_block = "10.0.2.0/24"
    gateway_id = aws_internet_gateway.gw_vpc.id
  }



  tags = {
    Name = "private-route-table"
  }
}
*/

