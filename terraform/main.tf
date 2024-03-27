provider "kubernetes" {
  config_path    = "C:/Users/user/.kube/config"
  config_context_cluster = "minikube"
}

provider "helm" {
  kubernetes {
    config_path    = "C:/Users/user/.kube/config"
    config_context_cluster = "minikube"
  }
}

terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    helm = {
      source = "hashicorp/helm"
    }
  }
}
module "app_server" {
  source = "./app-server"
}

module "db_server" {
  source = "./db-server"
}

module "web_server" {
  source = "./web-server"
}

module "grafana" {
  source = "./grafana"
}

module "prometheus" {
  source = "./prometheus"
}
