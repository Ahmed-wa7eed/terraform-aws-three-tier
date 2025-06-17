# Associate Public Subnets with Public Route Table
resource "aws_route_table_association" "public_subnet_a" {
  subnet_id      = aws_subnet.subnets["public_a"].id
  route_table_id = aws_route_table.public_rt.id
}


resource "aws_route_table_association" "public_subnet_b" {
  subnet_id      = aws_subnet.subnets["public_b"].id
  route_table_id = aws_route_table.public_rt.id
}



# Associate Private Web Subnets with Private Route Table
resource "aws_route_table_association" "private_web_subnet_a_AZ-a" {
  subnet_id      = aws_subnet.subnets["private_web_a"].id
  route_table_id = aws_route_table.private_rt-a.id
}

resource "aws_route_table_association" "private_web_subnet_b_AZ-b" {
  subnet_id      = aws_subnet.subnets["private_web_b"].id
  route_table_id = aws_route_table.private_rt-b.id
}