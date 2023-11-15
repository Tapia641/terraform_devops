# This block defines the configuration for Terraform itself.
terraform {
  # This block specifies the Terraform providers that are required for this configuration.
  required_providers {
    # official hashicorp AWS provider plugin should be used.
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67"
    }
  }
}

# AWS provider for use within the configuration
provider "aws" {
  # This property specifies the AWS credentials profile to use when interacting with AWS.
  profile = "default"
  # AWS region in which the resources will be provisioned.
  region  = "us-east-1"
}