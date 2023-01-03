# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED VARIABLES
# ---------------------------------------------------------------------------------------------------------------------

variable "name" {
  description = "The name of the team."
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# ---------------------------------------------------------------------------------------------------------------------

variable "description" {
  description = "A description of the team."
  type        = string
  default     = null
}

variable "maintainers" {
  description = "A list of users that are maintainers of this team."
  type        = set(string)
  default     = []
}

variable "members" {
  description = "A list of users that are part of this team."
  type        = set(string)
  default     = []
}

variable "privacy" {
  description = "The level of privacy for the team. One of `secret` or `closed`."
  type        = string
  default     = "closed"

  validation {
    condition     = contains(["secret", "closed"], var.privacy)
    error_message = "Team privacy must be set to either `secret` or `closed`."
  }
}

variable "parent_team_id" {
  description = "For nested teams, the ID of the parent team."
  type        = string
  default     = null
}

variable "create_default_maintainer" {
  description = "When set to `true`, the creating user is added to the team."
  type        = bool
  default     = false
}
