terraform {
  required_version = ">= 0.12.26"

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 5.7.0"
    }
  }
}

resource "github_organization_webhook" "webhook" {
  active = var.active
  events = var.events

  configuration {
    url          = var.url
    content_type = var.content_type
    insecure_ssl = var.insecure_ssl
  }
}
