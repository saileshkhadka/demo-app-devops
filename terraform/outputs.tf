output "app_server_service_ip" {
  value = module.app_server.service_ip
}

output "db_server_service_ip" {
  value = module.db_server.service_ip
}

output "web_server_service_ip" {
  value = module.web_server.service_ip
}
