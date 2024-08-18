
variable "project_name" {
  type    = string
  default = "chasiotis"
}

variable "do_sshKey" {
  type = string
}
variable "environment" {
  type = string
}
variable "vpc_id" {
  type = string
}


variable "server" {
  type = object({
    image  = string
    region = string
    size   = string
    name   = string
  })
}

variable "user" {
  type    = string
  default = "c774a7d8904f11eeb9d10242ac120002"
}

variable "sudo_password" {

}
