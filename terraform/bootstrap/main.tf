# Account-level bootstrap config — apply ONCE locally with admin credentials.
# This is separate from the per-environment app config (../) so CI deploys never
# touch the state bucket, lock table, OIDC provider, or the deploy role it uses.
#
# Initialize with its own state key (see backend.tf), then:
#   terraform plan / terraform apply

terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

# Used by backend-setup.tf for the state bucket name.
data "aws_caller_identity" "current" {}
