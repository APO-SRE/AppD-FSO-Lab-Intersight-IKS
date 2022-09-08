# Terraform ----------------------------------------------------------------------------------------
terraform {
  required_version = ">= 1.2.9"

  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">= 1.0.32"
    }
  }
}
