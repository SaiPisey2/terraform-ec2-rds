provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}


terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.11.0"
    }
  }
}


provider "kubernetes" {
  config_path    = "/root/.kube/config"
}
