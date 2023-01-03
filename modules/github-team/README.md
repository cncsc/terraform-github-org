# github-team

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

| Name                                                                                                                                   | Type     |
|----------------------------------------------------------------------------------------------------------------------------------------|----------|
| [github_team.team](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team)                             | resource |
| [github_team_membership.maintainer](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |
| [github_team_membership.member](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership)     | resource |

## Inputs

| Name                                                                                                              | Description                                                     | Type          | Default    | Required |
|-------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|---------------|------------|:--------:|
| <a name="input_create_default_maintainer"></a> [create\_default\_maintainer](#input\_create\_default\_maintainer) | When set to `true`, the creating user is added to the team.     | `bool`        | `false`    |    no    |
| <a name="input_description"></a> [description](#input\_description)                                               | A description of the team.                                      | `string`      | `null`     |    no    |
| <a name="input_maintainers"></a> [maintainers](#input\_maintainers)                                               | A list of users that are maintainers of this team.              | `set(string)` | `[]`       |    no    |
| <a name="input_members"></a> [members](#input\_members)                                                           | A list of users that are part of this team.                     | `set(string)` | `[]`       |    no    |
| <a name="input_name"></a> [name](#input\_name)                                                                    | The name of the team.                                           | `string`      | n/a        |   yes    |
| <a name="input_parent_team_id"></a> [parent\_team\_id](#input\_parent\_team\_id)                                  | For nested teams, the ID of the parent team.                    | `string`      | `null`     |    no    |
| <a name="input_privacy"></a> [privacy](#input\_privacy)                                                           | The level of privacy for the team. One of `secret` or `closed`. | `string`      | `"closed"` |    no    |

## Outputs

| Name                                                                  | Description                                 |
|-----------------------------------------------------------------------|---------------------------------------------|
| <a name="output_description"></a> [description](#output\_description) | The description of the team.                |
| <a name="output_privacy"></a> [privacy](#output\_privacy)             | The configured privacy setting of the team. |
| <a name="output_slug"></a> [slug](#output\_slug)                      | The slug (short name) of the team.          |
| <a name="output_team_id"></a> [team\_id](#output\_team\_id)           | The ID of the team.                         |
