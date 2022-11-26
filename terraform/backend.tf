terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "hexlet-club"

    workspaces {
      name = "hexlet77"
    }
  }
}
