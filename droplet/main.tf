data "digitalocean_ssh_key" "ssh_key_terraform" {
  name = "ssh_key_terraform"
}

resource "digitalocean_droplet" "droplet" {
  depends_on    = [data.digitalocean_ssh_key.ssh_key_terraform]
  vpc_uuid      = var.vpc_id
  image         = var.server.image
  name          = var.server.name
  region        = var.server.region
  size          = var.server.size
  droplet_agent = true
  ipv6          = true


  ssh_keys = [
    data.digitalocean_ssh_key.ssh_key_terraform.id
  ]

  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.do_sshKey)
    timeout     = "2m"
  }



  provisioner "local-exec" {
    command     = "sleep 60 && ansible-playbook ./playbooks/initial-setup.yml -i \"${self.ipv4_address}\", -u root --private-key=\"${var.do_sshKey}\" --extra-vars=\"users=['${var.user}']\" --extra-vars=\"ips=['${self.ipv4_address}']\""
    working_dir = "${path.module}/ansible"
  }

  provisioner "remote-exec" {
    connection {
      host        = self.ipv4_address
      user        = var.user
      type        = "ssh"
      private_key = file("~/.ssh/${var.user}")
    }
    inline = [
      "sudo -S docker swarm init --advertise-addr ${self.ipv4_address_private}",
    ]
  }

}

