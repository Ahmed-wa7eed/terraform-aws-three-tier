# Subnet Group for RDS - required to define where RDS instances will be deployed

resource "aws_db_subnet_group" "db_subnets" {
  name       = "db-subnet-group"
  subnet_ids = [aws_subnet.subnets["private_db_a"].id, aws_subnet.subnets["private_db_b"].id]

  tags = {
    Name = "DB Subnet Group"
  }
}

# RDS Instance (Multi-AZ for high availability)
resource "aws_db_instance" "master" {
  identifier             = "db-master"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  storage_type           = "gp2"
  username               = var.db_username
  password               = var.db_password
  db_name                = "mydb"
  db_subnet_group_name   = aws_db_subnet_group.db_subnets.name
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  multi_az              = true 
  publicly_accessible   = false
  skip_final_snapshot   = true

  tags = {
    Name = "RDS Master DB"
  }
}
