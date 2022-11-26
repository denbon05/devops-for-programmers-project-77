resource "digitalocean_loadbalancer" "public" {
  name   = "loadbalancer-hexlet77"
  region = "nyc3"

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 8069
    target_protocol = "http"
  }

  healthcheck {
    port     = 8069
    protocol = "http"
    path     = "/"
  }

  droplet_ids = digitalocean_droplet.servers.*.id
}
