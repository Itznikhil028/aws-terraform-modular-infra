variable "aws_region" {
  description = "AWS region for infrastructure provisioning"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type_per_env" {
  description = "EC2 instance sizing per environment workspace"
  type        = map(string)
  default = {
    dev  = "t3.micro"
    prod = "t3.small"
  }
}

variable "vpc_cidr_per_env" {
  description = "VPC CIDR allocations per workspace"
  type        = map(string)
  default = {
    dev  = "10.0.0.0/16"
    prod = "10.1.0.0/16"
  }
}

variable "subnet_cidr_per_env" {
  description = "Public subnet allocations per workspace"
  type        = map(string)
  default = {
    dev  = "10.0.1.0/24"
    prod = "10.1.1.0/24"
  }
}
