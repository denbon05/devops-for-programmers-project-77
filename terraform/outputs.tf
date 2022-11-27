output "server_ips" {
  value = digitalocean_droplet.servers.*.ipv4_address
}

output "db_host" {
  value     = digitalocean_database_cluster.postgres-hexlet77.host
  sensitive = true
}

output "db_name" {
  value     = digitalocean_database_cluster.postgres-hexlet77.database
  sensitive = true
}

output "db_port" {
  value     = digitalocean_database_cluster.postgres-hexlet77.port
  sensitive = true
}

output "db_user" {
  value     = digitalocean_database_cluster.postgres-hexlet77.user
  sensitive = true
}

output "db_password" {
  value     = digitalocean_database_cluster.postgres-hexlet77.password
  sensitive = true
}
