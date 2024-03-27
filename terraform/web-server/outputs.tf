output "service_ip" {
  value = kubernetes_service.web_server_loadbalancer.id
}
