
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.47.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
#   config_context = "minikube"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
    # config_context = "minikube"
  }
}