output "service_ip" {
  value = kubernetes_service.db_server_loadbalancer.id
}
