resource "kubernetes_deployment" "app_server" {
  metadata {
    name = "app-server"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "app-server"
      }
    }

    template {
      metadata {
        labels = {
          app = "app-server"
        }
      }

      spec {
        container {
          image = "sailesh081/demo-app-devops-app-server:latest"
          name  = "app-server"
          port {
            container_port = 3000
          }
        }
      }
    }
  }
}
