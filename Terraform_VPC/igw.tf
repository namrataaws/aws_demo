resource "aws_internet_gateway" "gw_vpc" {
  vpc_id = aws_vpc.custom_vpc.id

  tags = {
    Name = "my-vpc-igw"
  }
}