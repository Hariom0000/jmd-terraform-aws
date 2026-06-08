terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = var.tags
  }
}

# VPC Module
module "vpc" {
  source = "../../modules/vpc"

  project_name           = var.project_name
  environment            = var.environment
  vpc_cidr_block         = var.vpc_cidr_block
  availability_zones     = var.availability_zones
  public_subnet_cidrs    = var.public_subnet_cidrs
  private_subnet_cidrs   = var.private_subnet_cidrs
  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  enable_dns_hostnames   = var.enable_dns_hostnames
  enable_dns_support     = var.enable_dns_support

  tags = var.tags
}

# Security Groups Module
module "security_groups" {
  source = "../../modules/security_groups"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id

  tags = var.tags

  depends_on = [module.vpc]
}

# S3 Static Website Module
module "s3_static_site" {
  source = "../../modules/s3"

  bucket_name          = var.s3_bucket_name
  environment          = var.environment
  versioning_enabled   = var.s3_bucket_versioning
  encryption_algorithm = var.s3_server_side_encryption
  tags                 = var.tags
}