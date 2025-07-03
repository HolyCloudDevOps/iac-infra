terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "hollydevops"

    workspaces {
      name = "dev"
      project = "portfolio-website"
    }
  }

}
