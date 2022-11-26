resource "digitalocean_droplet" "servers" {
  count  = 2
  image  = "docker-20-04"
  name   = "hexlet77-server-${count.index + 1}"
  region = "ams2"
  size   = "s-1vcpu-1gb"
  # vpc_uuid

  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
}
