variable "members" {
  type        = set(string)
  description = "A list of member names"
}

variable "permissions" {
  type        = map(string)
  description = "A list of key-value pair like: `repo_name` : `permission_name`. `permission_name` must be one of `pull`, `push`, `maintain`, `triage` or `admin`."
}
