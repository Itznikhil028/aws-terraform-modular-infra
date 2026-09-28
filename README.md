# Automated AWS Modular Cloud Infrastructure with Terraform

Production-grade Infrastructure as Code (IaC) repository provisioning a modular networking and compute perimeter on AWS using Terraform.

---

## Architecture Overview

- Cloud Provider: AWS (ap-south-1)
- Networking: Custom VPC (10.0.0.0/16), Public Subnet (10.0.1.0/24), Internet Gateway, and Custom Route Table
- Compute: Ubuntu 24.04 LTS (t3.micro) auto-bootstrapped with Nginx via user_data
- Security: Stateful Security Group (Inbound Ports 80 & 22, Outbound All)

---

## Directory Structure

`q�text
aws-terraform-modular-infra/
├─━ modules/
│   ├─━ vpc/
│   │   ├─━ main.tf
│   │   ├─━ variables.tf
�