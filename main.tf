# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# APPLY CONFIGURATION TO A GITHUB ORGANIZATION
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

terraform {
  required_version = ">= 0.12.26"

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 5.7.0"
    }
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# APPLY BASE ORGANIZATION SETTINGS
# ---------------------------------------------------------------------------------------------------------------------

module "settings" {
  source = "./modules/github-org-settings"

  // Profile Info
  name          = var.name
  billing_email = var.billing_email
  description   = var.description
  company       = var.company
  location      = var.location

  // Contact Info
  email            = var.email
  blog             = var.blog
  twitter_username = var.twitter_username

  // Features
  has_organization_projects = var.has_organization_projects
  has_repository_projects   = var.has_repository_projects

  // Permissions
  default_repository_permission            = var.default_repository_permission
  members_can_create_repositories          = var.members_can_create_repositories
  members_can_create_public_repositories   = var.members_can_create_public_repositories
  members_can_create_private_repositories  = var.members_can_create_private_repositories
  members_can_create_internal_repositories = var.members_can_create_internal_repositories
  members_can_create_pages                 = var.members_can_create_pages
  members_can_create_public_pages          = var.members_can_create_public_pages
  members_can_create_private_pages         = var.members_can_create_private_pages
  members_can_fork_private_repositories    = var.members_can_fork_private_repositories

  // Security Settings
  web_commit_signoff_required                                  = var.web_commit_signoff_required
  advanced_security_enabled_for_new_repositories               = var.advanced_security_enabled_for_new_repositories
  dependabot_alerts_enabled_for_new_repositories               = var.dependabot_alerts_enabled_for_new_repositories
  dependabot_security_updates_enabled_for_new_repositories     = var.dependabot_security_updates_enabled_for_new_repositories
  dependency_graph_enabled_for_new_repositories                = var.dependency_graph_enabled_for_new_repositories
  secret_scanning_enabled_for_new_repositories                 = var.secret_scanning_enabled_for_new_repositories
  secret_scanning_push_protection_enabled_for_new_repositories = var.secret_scanning_push_protection_enabled_for_new_repositories
}

# ---------------------------------------------------------------------------------------------------------------------
# MANAGE BLOCKED USERS
# ---------------------------------------------------------------------------------------------------------------------

module "block" {
  for_each = var.blocked_users

  source = "./modules/github-org-block"

  username = each.key
}

# ---------------------------------------------------------------------------------------------------------------------
# MANAGE ORGANIZATION WEBHOOKS
# ---------------------------------------------------------------------------------------------------------------------

module "webhook" {
  for_each = { for x in var.webhooks : x.url => x }

  source = "./modules/github-org-webhook"

  url          = each.value.events
  events       = each.value.events
  content_type = each.value.content_type
  insecure_ssl = each.value.insecure_ssl
  active       = each.value.active
}
