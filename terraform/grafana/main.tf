provider "helm" {
  kubernetes {
    config_context_cluster = "minikube"
  }
}

resource "helm_release" "grafana" {
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "grafana"
  namespace  = "monitoring"

  set {
    name  = "adminPassword"
    value = "pGeCPjgMo91dwKuKOLTnJy3hmP9BnovlYFgdP2Gg"
  }
}


