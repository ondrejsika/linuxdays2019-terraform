variable "cloudflare_email" {}
variable "cloudflare_token" {}

provider "docker" {
  host = "ssh://root@docker.sikademo.com:22"
}

provider "cloudflare" {
  version = "~> 1.0"
  email = "${var.cloudflare_email}"
  token = "${var.cloudflare_token}"
}

resource "cloudflare_record" "hellolinuxdays" {
  domain = "sikademo.com"
  name   = "hellolinuxdays"
  value  = "docker.sikademo.com"
  type   = "CNAME"
  proxied = false
}

resource "docker_container" "hellolinuxdays" {
  name  = "hellolinuxdays"
  image = "ondrejsika/hellolinuxdays2019"
  ports {
    internal = 80
    external = 80
  }
}

output "url" {
  value = "http://${cloudflare_record.hellolinuxdays.hostname}"
}

