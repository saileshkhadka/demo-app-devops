resource "kubernetes_service" "db_server_loadbalancer" {
  metadata {
    name = "db-server-loadbalancer"
  }

  spec {
    selector = {
      app = "db-server"
    }

    port {
      protocol   = "TCP"
      port       = 3306
      target_port = 3306
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_service" "db_server_nodeport" {
  metadata {
    name = "db-server-nodeport"
  }

  spec {
    selector = {
      app = "db-server"
    }

    port {
      protocol   = "TCP"
      port       = 3306
      target_port = 3306
    }

    type = "NodePort"
  }
}