terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

resource "github_repository_collaborator" "this" {
  for_each = { for v in setproduct(var.members, keys(var.permissions), values(var.permissions)) : join(",", v) => v }

  username   = each.value[0]
  repository = each.value[1]
  permission = each.value[2]
}
