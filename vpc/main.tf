resource "digitalocean_vpc" "vpc" {
  name   = var.vpc_configuration["name"]
  region = var.vpc_configuration["region"]
  ip_range = var.vpc_configuration["ip_range"]
  description = var.vpc_configuration["description"]
}