terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.8.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.1.0"
    }
  }

  cloud {
    organization = "hc-implementation-services"

    workspaces {
      name = "accelerator-aws-vault-test"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

provider "tls" {}
