terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "organization_name"

    workspaces {
      name = "github-terraform"
    }
  }
}
