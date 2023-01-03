# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED VARIABLES
# ---------------------------------------------------------------------------------------------------------------------

variable "username" {
  description = "The GitHub username of the user being added to the org."
  type        = string
}

variable "role" {
  description = "The role of the user in the org. One of `admin` or `member`."
  type        = string

  validation {
    condition     = contains(["admin", "member"], var.role)
    error_message = "Role must be either `admin` or `member`."
  }
}
