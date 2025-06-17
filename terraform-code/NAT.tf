# NAT Gateway at public subnet to provide internet to private subnets
resource "aws_nat_gateway" "nat-a" {
  allocation_id = aws_eip.nat_eip_a.id
  subnet_id     = aws_subnet.subnets["public_a"].id
  depends_on    = [aws_internet_gateway.igw]
  tags = {
    Name = "nat-a"
  }
}


resource "aws_nat_gateway" "nat-b" {
  allocation_id = aws_eip.nat_eip_b.id
  subnet_id     = aws_subnet.subnets["public_b"].id
  depends_on    = [aws_internet_gateway.igw]
  tags = {
    Name = "nat-b"
  }
}



