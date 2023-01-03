terraform {
  required_version = ">= 0.12.26"

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 5.7.0"
    }
  }
}

resource "github_membership" "member" {
  username = var.username
  role     = var.role == "admin" ? "admin" : "member"
}
