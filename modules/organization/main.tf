terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

resource "github_membership" "this" {
  for_each = var.all_members
  username = each.key
  role     = each.value
}
