resource "kubernetes_deployment" "app_server" {
  metadata {
    name = "db-server"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "db-server"
      }
    }

    template {
      metadata {
        labels = {
          app = "db-server"
        }
      }

      spec {
        container {
          image = "sailesh081/demo-app-devops-db-server:latest" 
          name  = "db-server"
          port {
            container_port = 3306
          }
        }
      }
    }
  }
}
