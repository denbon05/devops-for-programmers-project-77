resource "digitalocean_loadbalancer" "public" {
  name     = "loadbalancer-hexlet77"
  region   = var.region
  vpc_uuid = digitalocean_vpc.hexlet77.id

  forwarding_rule {
    entry_port     = 443
    entry_protocol = "https"

    target_port     = var.app_port
    target_protocol = "http"

    certificate_name = digitalocean_certificate.cert.name
  }

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = var.app_port
    target_protocol = "http"

    certificate_name = digitalocean_certificate.cert.name
  }

  redirect_http_to_https = true

  healthcheck {
    port     = var.app_port
    protocol = "http"
    path     = "/"
  }

  droplet_ids = digitalocean_droplet.servers.*.id
}
