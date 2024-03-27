resource "kubernetes_deployment" "app_server" {
  metadata {
    name = "web-server"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "web-server"
      }
    }

    template {
      metadata {
        labels = {
          app = "web-server"
        }
      }

      spec {
        container {
          image = "sailesh081/demo-app-devops-web-server:latest"
          name  = "app-server"
          port {
            container_port = 8000
          }
        }
      }
    }
  }
}
