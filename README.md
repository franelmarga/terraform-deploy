# Terraform Root Repository for Environment Management

This repository demonstrates the use of the [Terraform network module](https://github.com/franelmarga/terraform-network-module) to manage network resources across multiple environments: development, staging, and production. Each environment is configured to use the `terraform-module-networks` as a submodule, which allows for consistent infrastructure deployment across all stages.


## Repository Structure

````
.
├── README.md
├── dev
│   ├── main.tf -> ../main.tf
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   ├── terraform.tfvars
│   └── variables.tf -> ../variables.tf
├── main.tf
├── prod
│   ├── main.tf -> ../main.tf
│   ├── terraform.tfvars
│   └── variables.tf -> ../variables.tf
├── provider.tf
├── staging
│   ├── main.tf -> ../main.tf
│   ├── terraform.tfvars
│   └── variables.tf -> ../variables.tf
└── variables.tf
````

## Prerequisites

Before you begin, ensure you have the following installed:
- Terraform v1.4 or higher
- Git
- Access to an AWS account

## Usage

To use this repository, clone it locally and navigate into one of the environment directories:

```
git clone https://github.com/franelmarga/terraform-deploy.git
cd terraform-deploy/dev
terraform init
terraform plan
terraform apply
```
