variable "all_members" {
  default = {
    "mochigenmai" : "admin",
    "member01" : "member"
  }
}

variable "team01_members" {
  default = {
    "mochigenmai" : "maintainer",
    "member01" : "member"
  }
}

variable "collaborator_members" {
  default = [
    "collaborator01",
    "collaborator02"
  ]
}
