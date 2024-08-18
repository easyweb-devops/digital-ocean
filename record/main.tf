resource "digitalocean_record" "record" {
  domain = var.record.domain
  name   = var.record.name
  type   = var.record.type
  value  = var.record.value
  ttl    = 1800
}
