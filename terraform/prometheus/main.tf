provider "helm" {
  kubernetes {
    config_context_cluster = "minikube"
  }
}

resource "helm_release" "prometheus" {
  name       = "prometheus"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "prometheus"
  namespace  = "monitoring"

  # Define other chart settings as needed
}
