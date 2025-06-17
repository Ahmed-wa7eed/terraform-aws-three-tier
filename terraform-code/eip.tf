# Elastic IP for NAT Gateway
resource "aws_eip" "nat_eip_a" {
    tags = {
      Name = var.aws_eip_name-a
    }
}


resource "aws_eip" "nat_eip_b" {
    tags = {
      Name = var.aws_eip_name-b
    }
}

