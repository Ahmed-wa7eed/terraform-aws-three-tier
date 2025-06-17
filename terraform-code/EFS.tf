# create EFS File System
resource "aws_efs_file_system" "app_efs" {
  creation_token = "web-efs"
  performance_mode = "generalPurpose"
  throughput_mode  = "bursting"
  tags = {
    Name = "web-efs"
  }
}

# Mount Target at Subnet A
resource "aws_efs_mount_target" "efs_a" {
  file_system_id  = aws_efs_file_system.app_efs.id
  subnet_id       = aws_subnet.subnets["private_web_a"].id
  security_groups = [aws_security_group.efs_sg.id]
}

# Mount Target في Subnet B
resource "aws_efs_mount_target" "efs_b" {
  file_system_id  = aws_efs_file_system.app_efs.id
  subnet_id       = aws_subnet.subnets["private_web_b"].id
  security_groups = [aws_security_group.efs_sg.id]
}