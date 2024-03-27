resource "kubernetes_service" "app_server_loadbalancer" {
  metadata {
    name = "app-server-loadbalancer"
  }

  spec {
    selector = {
      app = "app-server"
    }

    port {
      protocol   = "TCP"
      port       = 3000
      target_port = 3000
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_service" "app_server_nodeport" {
  metadata {
    name = "app-server-nodeport"
  }

  spec {
    selector = {
      app = "app-server"
    }

    port {
      protocol   = "TCP"
      port       = 3000
      target_port = 3000
    }

    type = "NodePort"
  }
}
