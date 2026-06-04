# VPC Module

This module creates a complete VPC setup with public and private subnets across multiple availability zones.

## Features

- VPC with configurable CIDR block
- Public subnets with internet access
- Private subnets with NAT Gateway access
- Internet Gateway and NAT Gateways
- Route tables for public and private subnets

## Usage

```hcl
module "vpc" {
  source = "../../modules/vpc"

  project_name           = "jmd"
  environment            = "dev"
  vpc_cidr_block         = "10.0.0.0/16"
  availability_zones     = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnet_cidrs    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_cidrs   = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  enable_nat_gateway     = true
  single_nat_gateway     = true

  tags = var.tags
}