resource "kubernetes_service" "web_server_loadbalancer" {
  metadata {
    name = "web-server-loadbalancer"
  }

  spec {
    selector = {
      app = "web-server"
    }

    port {
      protocol   = "TCP"
      port       = 8000
      target_port = 8000
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_service" "web_server_nodeport" {
  metadata {
    name = "web-server-nodeport"
  }

  spec {
    selector = {
      app = "web-server"
    }

    port {
      protocol   = "TCP"
      port       = 8000
      target_port = 8000
    }

    type = "NodePort"
  }
}
