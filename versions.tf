# Terraform ----------------------------------------------------------------------------------------
terraform {
  required_version = ">= 1.2.9, < 1.3.0"

  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">= 1.0.32"
    }
  }
}
