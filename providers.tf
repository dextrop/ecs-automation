#This installs the provider for aws & docker
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"

    }
    aws = {
      source = "hashicorp/aws"

    }
  }
}

provider "docker" {}

provider "aws" {
  region = var.region
  shared_credentials_files = ["credentials"]
  profile = "testing"
}