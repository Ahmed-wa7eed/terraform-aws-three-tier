# 🌐 AWS 3-Tier Web Application using Terraform

This project provisions a **highly available 3-tier web application** infrastructure on **AWS** using **Terraform**. It demonstrates best practices for Infrastructure as Code (IaC), including secure networking, autoscaling, and load balancing.

---

## 📌 Architecture Overview

This setup follows a **modular**, **scalable**, and **secure** architecture pattern, distributed across **two Availability Zones**.

### 🔧 Components

- **VPC** with custom CIDR block
- **Subnets**:
  - 2 Public Subnets (for Load Balancer, NAT Gateway)
  - 2 Private Web Subnets (for EC2 instances)
  - 2 Private DB Subnets (for RDS)
- **Internet Gateway** and **Route Tables**
- **NAT Gateways** in public subnets to allow private subnet outbound internet
- **Application Load Balancer (ALB)**
- **Auto Scaling Group (ASG)** for EC2 web instances
- **Launch Template** with Apache installation using `user_data`
- **RDS MySQL** instance deployed in private subnets
- **Security Groups** to control access

---
## 🚀 Deployment Instructions

### 🔧 Prerequisites

- AWS CLI configured
- AWS = ~>5.0
- IAM user with permissions to provision AWS infrastructure

### 📦 Steps

```bash
# Clone the repository
git clone https://github.com/Ahmed-wa7eed/terraform-aws-three-tier.git
cd aws-terraform-webapp

# Initialize Terraform
terraform init

# Check the plan
terraform plan

# Apply the configuration
terraform apply


