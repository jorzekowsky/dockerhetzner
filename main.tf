variable "hcloud_token" {}
variable "ssh_keys" {}
variable "server_type" { default = "cx21" }
variable "image" { default = "ubuntu-18.04" }
variable "name" {}
variable "location" { default = "fsn1" }

provider "hcloud" {
  token = "${var.hcloud_token}"
}

resource "hcloud_server" "docker" {
  name        = "${var.name}-docker"
  count       = "1"
  image       = "${var.image}"
  location    = "${var.location}"
  ssh_keys    = "${var.ssh_keys}"
  server_type = "${var.server_type}"
}
