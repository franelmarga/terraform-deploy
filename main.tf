# This would be an example of the use of the module in the development environment.
# We can define the variables in the terraform.tfvars file and then use them in the main.tf file, for conserving the granularity of the configuration.

module "infra-network" {
  source = "git::https://github.com/franelmarga/terraform-network-module.git?ref=1.0.1"

  env                = var.env
  region             = var.region
  vpc_cidr           = var.vpc_cidr
  availability_zones = var.availability_zones
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  create_nat_gateway = var.create_nat_gateway
  repo_tags          = var.repo_tags
  env_tags           = var.env_tags
}
