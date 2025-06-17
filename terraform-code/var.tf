variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_name" {
    type = string
    default = "project_vpc"
  
}

variable "igw_name" {
  type = string
  default = "project_igw"
  
}

variable "aws_eip_name-a" {
    type= string
    default = "nat-eip-a"

  
}

variable "aws_eip_name-b" {
    type= string
    default = "nat-eip-b"
 
}

variable "lb_name" {
  type = string
  default = "app-lb"
  
}

variable "lb_target_name" {
  type = string
  default = "app-tg"
  
}

variable "aws_launch_template_name" {
  type = string
  default = "web-lt"
  
}

variable "launch_template_img_id" {
  type = string
  
}

variable "db_username" {
    type = string
}

variable "db_password" {
    type = string
}

locals {
  subnets = {
    public_a = {
      cidr_block        = "10.0.1.0/24"
      availability_zone = "us-east-1a"
      map_public_ip     = true
      name              = "public-subnet-a"
    }
    public_b = {
      cidr_block        = "10.0.2.0/24"
      availability_zone = "us-east-1b"
      map_public_ip     = true
      name              = "public-subnet-b"
    }
    private_web_a = {
      cidr_block        = "10.0.3.0/24"
      availability_zone = "us-east-1a"
      map_public_ip     = false
      name              = "private-web-a"
    }
    private_web_b = {
      cidr_block        = "10.0.4.0/24"
      availability_zone = "us-east-1b"
      map_public_ip     = false
      name              = "private-web-b"
    }
    private_db_a = {
      cidr_block        = "10.0.5.0/24"
      availability_zone = "us-east-1a"
      map_public_ip     = false
      name              = "private-db-a"
    }
    private_db_b = {
      cidr_block        = "10.0.6.0/24"
      availability_zone = "us-east-1b"
      map_public_ip     = false
      name              = "private-db-b"
    }
  }
}



