variable "record" {
  type = object({
    domain = string
    name   = string
    type   = string
    value  = string
  })
}
