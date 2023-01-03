output "team_id" {
  description = "The ID of the team."
  value       = github_team.team.id
}

output "slug" {
  description = "The slug (short name) of the team."
  value       = github_team.team.slug
}

output "description" {
  description = "The description of the team."
  value       = github_team.team.description
}

output "privacy" {
  description = "The configured privacy setting of the team."
  value       = github_team.team.privacy
}
