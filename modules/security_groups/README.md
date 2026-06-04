# Security Groups Module

Manages security groups for a three-tier application architecture.

## Features

- ALB security group with HTTP/HTTPS
- Application security group
- Database security group with restricted access
- Proper ingress/egress rules

## Usage

```hcl
module "security_groups" {
  source = "../../modules/security_groups"

  project_name = "jmd"
  environment  = "dev"
  vpc_id       = module.vpc.vpc_id

  tags = var.tags
}