terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "harness-dev"
    workspaces {
      name = "vl-prerequisites-cloud-run-1"
    }
  }
}
