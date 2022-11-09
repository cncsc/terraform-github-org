
terraform {
  required_version = ">= 0.12.26"

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 5.7.0"
    }
  }
}

provider "github" {
  owner = "cncsc"
}

module "org" {
  source = "../../"

  name          = "Cloud-Native Cybersecurity Collective"
  billing_email = "info@cncsc.io"
  location      = "Singapore"
  email         = "info@cncsc.io"
  blog          = "https://cncsc.io"
}
