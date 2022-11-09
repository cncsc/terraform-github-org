# github-org-webhook

Terraform module for managing an organization webhook in a GitHub organization.

## Requirements

| Name                                                                      | Version    |
|---------------------------------------------------------------------------|------------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_github"></a> [github](#requirement\_github)          | >= 5.7.0   |

## Inputs

| Name                                                                     | Description                                                                                                                                                                           | Type           | Default  | Required |
|--------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------|----------|:--------:|
| <a name="input_active"></a> [active](#input\_active)                     | Indicate of the webhook should receive events.                                                                                                                                        | `bool`         | `true`   |    no    |
| <a name="input_content_type"></a> [content\_type](#input\_content\_type) | The format in which the webhook events will be delivered. One of `json` or `form`.                                                                                                    | `string`       | `"json"` |    no    |
| <a name="input_events"></a> [events](#input\_events)                     | A list of events which should trigger the webhook. See the list of available events at https://docs.github.com/en/developers/webhooks-and-events/webhooks/webhook-events-and-payloads | `list(string)` | n/a      |   yes    |
| <a name="input_insecure_ssl"></a> [insecure\_ssl](#input\_insecure\_ssl) | Whether or not to relax TLS validation enforcement.                                                                                                                                   | `bool`         | `false`  |    no    |
| <a name="input_url"></a> [url](#input\_url)                              | The URL to which the webhook events will be posted.                                                                                                                                   | `string`       | n/a      |   yes    |

## Outputs

| Name                                          | Description             |
|-----------------------------------------------|-------------------------|
| <a name="output_url"></a> [url](#output\_url) | The URL of the webhook. |
