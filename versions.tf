# Terraform ----------------------------------------------------------------------------------------
terraform {
  required_version = ">= 1.1.8"

  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">= 1.0.26"
    }
  }
}
