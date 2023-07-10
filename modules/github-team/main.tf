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
# CREATE A TEAM
# ---------------------------------------------------------------------------------------------------------------------

resource "github_team" "team" {
  name        = var.name
  description = var.description
  privacy     = var.privacy

  create_default_maintainer = var.create_default_maintainer
  parent_team_id            = var.parent_team_id
}

# ---------------------------------------------------------------------------------------------------------------------
# ADD MAINTAINERS
# ---------------------------------------------------------------------------------------------------------------------

resource "github_team_membership" "maintainer" {
  for_each = var.maintainers
  team_id  = github_team.team.id
  username = each.key
  role     = "maintainer"
}

# ---------------------------------------------------------------------------------------------------------------------
# ADD MEMBERS
# ---------------------------------------------------------------------------------------------------------------------

resource "github_team_membership" "member" {
  for_each = var.members
  team_id  = github_team.team.id
  username = each.key
  role     = "member"
}
