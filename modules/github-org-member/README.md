# github-org-member

## Requirements

| Name                                                                      | Version    |
|---------------------------------------------------------------------------|------------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_github"></a> [github](#requirement\_github)          | >= 5.7.0   |

## Providers

| Name                                                       | Version  |
|------------------------------------------------------------|----------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 5.7.0 |

## Resources

| Name                                                                                                                     | Type     |
|--------------------------------------------------------------------------------------------------------------------------|----------|
| [github_membership.member](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |

## Inputs

| Name                                                       | Description                                                  | Type     | Default | Required |
|------------------------------------------------------------|--------------------------------------------------------------|----------|---------|:--------:|
| <a name="input_role"></a> [role](#input\_role)             | The role of the user in the org. One of `admin` or `member`. | `string` | n/a     |   yes    |
| <a name="input_username"></a> [username](#input\_username) | The GitHub username of the user being added to the org.      | `string` | n/a     |   yes    |
