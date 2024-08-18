resource "digitalocean_domain" "domain" {
  name = var.domain_name
  ip_address = var.droplet_ip
}

#resource "digitalocean_record" "ns1" {
#
#
#  domain = var.domain_name
#  name   = "@"
#  type   = "NS"
#  value  = "ns1.digitalocean.com."
#}
#resource "digitalocean_record" "ns2" {
#  domain = var.domain_name
#  name   = "@"
#  type   = "NS"
#  value  = "ns2.digitalocean.com."
#}
#
#resource "digitalocean_record" "ns3" {
#  domain = var.domain_name
#  name   = "@"
#  type   = "NS"
#  value  = "ns3.digitalocean.com."
#}
#
#resource "digitalocean_record" "easy-web-www-record" {
#  domain = var.domain_name
#  name   = "www"
#  type   = "CNAME"
#  value  = "@"
#}
