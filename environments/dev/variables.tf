variable "aws_region" {
  default = "us-east-1"
  type    = string
}

variable "environment" {
  default = "dev"
  type    = string
}

variable "project_name" {
  default = "jmd-constructions"
  type    = string
}

variable "tags" {
  default = {
    Environment = "dev"
    Project     = "jmd-constructions"
    ManagedBy   = "Terraform"
  }
  type = map(string)
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  type    = string
}

variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
  type    = list(string)
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  type    = list(string)
}

variable "private_subnet_cidrs" {
  default = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  type    = list(string)
}

variable "enable_nat_gateway" {
  default = true
  type    = bool
}

variable "single_nat_gateway" {
  default = true
  type    = bool
}

variable "enable_dns_hostnames" {
  default = true
  type    = bool
}

variable "enable_dns_support" {
  default = true
  type    = bool
}

variable "enable_security_groups" {
  default = true
  type    = bool
}

variable "instance_type" {
  default = "t3.micro"
  type    = string
}

variable "instance_count" {
  default = 1
  type    = number
}

variable "enable_monitoring" {
  default = false
  type    = bool
}

variable "rds_engine" {
  default = "postgres"
  type    = string
}

variable "rds_engine_version" {
  default = "14.7"
  type    = string
}

variable "rds_instance_class" {
  default = "db.t3.micro"
  type    = string
}

variable "rds_allocated_storage" {
  default = 20
  type    = number
}

variable "rds_backup_retention" {
  default = 7
  type    = number
}

variable "s3_bucket_name" {
  description = "Unique name for the static website S3 bucket"
  type        = string
}

variable "s3_bucket_versioning" {
  default = true
  type    = bool
}

variable "s3_server_side_encryption" {
  default = "AES256"
  type    = string
}