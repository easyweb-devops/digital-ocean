output "droplet_ip" {
  value = digitalocean_droplet.droplet.ipv4_address
}
output "droplet_id" {
  value = digitalocean_droplet.droplet.id
}

output "droplet_ipv6" {
  value = digitalocean_droplet.droplet.ipv6_address
}

output "private_ip" {
  value = digitalocean_droplet.droplet.ipv4_address_private
}
