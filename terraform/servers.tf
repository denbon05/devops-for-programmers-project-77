resource "digitalocean_droplet" "servers" {
  count    = 2
  image    = "docker-20-04"
  name     = "hexlet77-server-${count.index + 1}"
  region   = var.region
  size     = "s-1vcpu-1gb"
  vpc_uuid = digitalocean_vpc.hexlet77.id

  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
}
