resource "digitalocean_droplet" "nginx-1" {
  image              = "ubuntu-20-04-x64"
  name               = "nginx-1"
  region             = "nyc3"
  size               = "s-1vcpu-1gb"
  private_networking = true
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]

  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.pvt_key)
    timeout     = "2m"
  }
}

resource "digitalocean_droplet" "infrastructure-1" {
  image              = "ubuntu-20-04-x64"
  name               = "infrastructure-1"
  region             = "nyc3"
  size               = "s-1vcpu-1gb"
  private_networking = true
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]

  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.pvt_key)
    timeout     = "2m"
  }
}
