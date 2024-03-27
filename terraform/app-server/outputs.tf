output "service_ip" {
  value = kubernetes_service.app_server_loadbalancer.id
}
