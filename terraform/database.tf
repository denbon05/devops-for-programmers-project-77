resource "digitalocean_database_cluster" "postgres-hexlet77" {
  name       = "postgres-hexlet77-cluster"
  engine     = "pg"
  version    = "13"
  size       = "db-s-1vcpu-1gb"
  region     = "ams2"
  node_count = 1
}

resource "digitalocean_database_db" "hexlet77" {
  cluster_id = digitalocean_database_cluster.postgres-hexlet77.id
  name       = "hexlet77"
}
