resource "digitalocean_vpc" "hexlet77" {
  name     = "hexlet77"
  region   = "ams3"
  ip_range = "192.168.10.0/24"
}

resource "digitalocean_certificate" "cert" {
  name    = "le-cert"
  type    = "lets_encrypt"
  domains = [var.domain_name]
}
