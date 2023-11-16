terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

locals {
  collaborator_members = [
    for v in setproduct(var.members, keys(var.permissions)) : {
      username   = v[0]
      repository = v[1]
      permission = lookup(var.permissions, v[1])
    }
  ]
}

resource "github_repository_collaborator" "this" {
  for_each = { for item in local.collaborator_members : "${item.username}_${item.repository}" => item }

  username   = each.value.username
  repository = each.value.repository
  permission = each.value.permission
}
