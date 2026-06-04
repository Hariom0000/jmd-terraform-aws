# JMD Terraform AWS Infrastructure

AWS infrastructure as code for the JMD project using Terraform.

## 📋 Repository Structure

- **modules/** - Reusable Terraform modules
  - vpc/ - VPC, subnets, NAT, IGW
  - security_groups/ - Security groups
  - compute/ - EC2, ASG, ALB
  - rds/ - RDS databases
  - s3/ - S3 buckets

- **environments/** - Environment-specific configs
  - dev/ - Development
  - staging/ - Staging
  - prod/ - Production

- **.github/workflows/** - CI/CD pipelines

## 🚀 Quick Start

```bash
cd environments/dev
terraform init
terraform plan
terraform apply