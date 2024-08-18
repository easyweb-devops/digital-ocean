variable "project_name" {
  type    = string
  default = "chasiotis"
}

variable "vpc_configuration" {
  type = object({
    name        = string
    region      = string
    ip_range    = string
    description = string
  })
}
