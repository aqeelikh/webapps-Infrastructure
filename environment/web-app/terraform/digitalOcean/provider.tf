terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = "dop_v1_ad707c55b8d654eee19a76fb4c3c2fea68df470ade8d8a41a49a64b56c365689"
}

data "digitalocean_ssh_key" "terraform" {
  name = "All Might key"
}