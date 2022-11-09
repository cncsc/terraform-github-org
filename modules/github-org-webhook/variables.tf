# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED VARIABLES
# ---------------------------------------------------------------------------------------------------------------------

variable "events" {
  type        = list(string)
  description = "A list of events which should trigger the webhook. See the list of available events at https://docs.github.com/en/developers/webhooks-and-events/webhooks/webhook-events-and-payloads"
}

variable "url" {
  type        = string
  description = "The URL to which the webhook events will be posted."
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# ---------------------------------------------------------------------------------------------------------------------

variable "content_type" {
  type        = string
  description = "The format in which the webhook events will be delivered. One of `json` or `form`."
  default     = "json"

  validation {
    condition     = contains(["json", "form"], var.content_type)
    error_message = "The webhook content type must be one of `json` or `form`."
  }
}

variable "insecure_ssl" {
  type        = bool
  description = "Whether or not to relax TLS validation enforcement."
  default     = false
}

variable "active" {
  type        = bool
  description = "Indicate of the webhook should receive events."
  default     = true
}
