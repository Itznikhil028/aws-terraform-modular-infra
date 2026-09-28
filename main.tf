locals {
  env = terraform.workspace
}

module "vpc" {
  source = "./modules/vpc"

  aws_region         = var.aws_region
  vpc_cidr           = lookup(var.vpc_cidr_per_env, local.env, "10.0.0.0/16")
  public_subnet_cidr = lookup(var.subnet_cidr_per_env, local.env, "10.0.1.0/24")
  project_name       = local.env
}

module "ec2" {
  source = "./modules/ec2"

  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_id
  instance_type = lookup(var.instance_type_per_env, local.env, "t3.micro")
  project_name  = local.env
}
