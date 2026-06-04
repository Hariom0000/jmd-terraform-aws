# CI/CD Pipeline Setup Guide

This document describes the CI/CD pipelines configured for the JMD Terraform AWS Infrastructure repository.

## 📋 Workflows Overview

### 1. **Terraform Validate** (`terraform-validate.yml`)
- **Trigger**: Push to `main`, Pull Requests
- **Purpose**: Validates Terraform configuration syntax and format
- **Steps**:
  - Checks Terraform code formatting
  - Initializes and validates each environment (dev, staging, prod)
  - Uses `-backend=false` to validate without backend connectivity

**What it does**:
```bash
terraform fmt -check -recursive .    # Checks code formatting
terraform init -backend=false        # Validates without backend
terraform validate                   # Validates syntax