variable "name" {
  type        = string
  description = "The name of the team."
}

variable "description" {
  type        = optional(string)
  description = "A description of the team."
}

variable "privacy" {
  type        = optional(string)
  description = "The level of privacy for the team. Must be one of secret or closed."
}

variable "members" {
  type        = set(string)
  description = "A list of member names."
}

variable "permissions" {
  type        = set(string)
  description = "A list of the permissions of team members regarding the repository. Must be one of `pull`, `triage`, `push`, `maintain` or `admin`."
}
